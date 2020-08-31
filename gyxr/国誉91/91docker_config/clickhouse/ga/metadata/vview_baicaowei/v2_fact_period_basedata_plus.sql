ATTACH VIEW v2_fact_period_basedata_plus
(
    `id` Int64, 
    `event_date` Nullable(Date), 
    `shop_code` Nullable(String), 
    `prd_id` Nullable(String), 
    `prd_name` Nullable(String), 
    `visitor_count` Nullable(Int64), 
    `prd_page_jump_out_rate` Nullable(Float32), 
    `avg_stay_in_s` Nullable(Float32), 
    `add_cart_prd_count` Nullable(Int64), 
    `fav_prd_buyer_count` Nullable(Int64), 
    `pay_buyer_count` Nullable(Int64), 
    `pay_cv_rate` Nullable(Float32), 
    `order_buyer_count` Nullable(Int64), 
    `order_prd_count` Nullable(Int64), 
    `order_amt` Nullable(Float32), 
    `order_cv_rate` Nullable(Float32), 
    `add_buy_count` Nullable(Int64), 
    `pay_new_buyer_count` Nullable(Int64), 
    `pay_old_buyer_count` Nullable(Int64), 
    `visitor_avg_value` Nullable(Float32), 
    `pay_prd_qty` Float64, 
    `pay_amt` Float64, 
    `stock_qty` Nullable(Float64), 
    `cum_pay_amt` Float32, 
    `cum_pay_prd_qty` Int32, 
    `bwpz_key` Nullable(String)
) AS
SELECT 
    id, 
    a.event_date AS event_date, 
    shop_code, 
    a.prd_id AS prd_id, 
    prd_name, 
    visitor_count, 
    prd_page_jump_out_rate, 
    avg_stay_in_s, 
    add_cart_prd_count, 
    fav_prd_buyer_count, 
    pay_buyer_count, 
    pay_cv_rate, 
    order_buyer_count, 
    order_prd_count, 
    order_amt, 
    order_cv_rate, 
    add_buy_count, 
    pay_new_buyer_count, 
    pay_old_buyer_count, 
    visitor_avg_value, 
    b.pay_prd_qty AS pay_prd_qty, 
    b.pay_amt AS pay_amt, 
    c.stock_qty AS stock_qty, 
    d.cs_amt AS cum_pay_amt, 
    d.cs_qty AS cum_pay_prd_qty, 
    bwpz_key
FROM 
(
    SELECT 
        *, 
        toDateTime(event_date) AS dt_event_date, 
        concat(prd_id, '_', toString(toYYYYMMDD(addDays(toMonday(event_date), -1)))) AS bwpz_key
    FROM spl_baicaowei.ali_op_overall_op_logs
) AS a
ANY LEFT JOIN 
(
    SELECT 
        ordered_at, 
        product_id, 
        sumMerge(qty) AS pay_prd_qty, 
        sumMerge(amt) AS pay_amt
    FROM vview_baicaowei.prd_daily_sale_logs
    GROUP BY 
        ordered_at, 
        product_id
) AS b ON (a.event_date = b.ordered_at) AND (a.prd_id = b.product_id)
ANY LEFT JOIN vview_baicaowei.v2_fact_prd_stock_logs AS c ON (a.prd_id = c.product_id) AND (c.store_date = a.event_date)
ASOF LEFT JOIN vview_baicaowei.cumsum_prd_sale_logs AS d ON (d.product_id = a.prd_id) AND (d.dt_order_date <= a.dt_event_date)
