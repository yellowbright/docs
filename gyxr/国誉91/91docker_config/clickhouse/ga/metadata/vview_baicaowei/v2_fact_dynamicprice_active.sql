ATTACH VIEW v2_fact_dynamicprice_active
(
    `id` Int64, 
    `product_id` Nullable(String), 
    `discounthead` Nullable(Float32), 
    `q2umeanpred` Nullable(Float32), 
    `market_price` Nullable(Float32), 
    `date_st` Nullable(Date), 
    `days` Nullable(Int64), 
    `qtyheadpred` Nullable(Int64), 
    `pricehead` Nullable(Float32), 
    `pay_cv_rate` Nullable(Float32), 
    `pay_prd_qty` Nullable(Float64), 
    `pay_amt` Nullable(Float64), 
    `cum_prd_qty` Int32, 
    `cum_pay_amt` Float32, 
    `stock_qty` Nullable(Float64), 
    `bwpz_key` Nullable(String)
) AS
SELECT 
    a.id AS id, 
    a.product_id AS product_id, 
    discounthead, 
    q2umeanpred, 
    market_price, 
    date_st, 
    days, 
    qtyheadpred, 
    pricehead, 
    pay_cv_rate, 
    sum_qty AS pay_prd_qty, 
    sum_amt AS pay_amt, 
    cs_qty AS cum_prd_qty, 
    cs_amt AS cum_pay_amt, 
    stock_qty, 
    bwpz_key
FROM 
(
    SELECT 
        *, 
        addDays(date_st, days) AS stat_end_date, 
        toDateTime(addDays(date_st, days)) AS dt_stat_end_date, 
        concat(product_id, '_', toString(toYYYYMMDD(addDays(toMonday(addDays(date_st, days)), -1)))) AS bwpz_key
    FROM spl_baicaowei.opt_dynamicprice_active
) AS a
ANY LEFT JOIN spl_baicaowei.ali_op_overall_op_logs AS b ON (a.product_id = b.prd_id) AND (b.event_date = a.stat_end_date)
ANY LEFT JOIN vview_baicaowei.v2_fact_prd_stock_logs AS c ON (c.product_id = a.product_id) AND (c.store_date = a.stat_end_date)
ANY LEFT JOIN vview_baicaowei.stat_prd_sale_logs AS s ON (s.product_id = a.product_id) AND (s.stat_end_date = a.stat_end_date)
ASOF LEFT JOIN vview_baicaowei.cumsum_prd_sale_logs AS cs ON (cs.product_id = a.product_id) AND (cs.dt_order_date <= a.dt_stat_end_date)
