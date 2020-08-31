ATTACH VIEW v2_fact_dynamicprice_comman
(
    `id` Int64, 
    `product_id` Nullable(String), 
    `discounthead` Nullable(Float32), 
    `q2umeanpred` Nullable(Float32), 
    `market_price` Nullable(Float32), 
    `date_st` Nullable(Date), 
    `pred_week` Nullable(Int64), 
    `activddayshead` Nullable(Int64), 
    `uvheadpred` Nullable(Int64), 
    `qtyheadpred` Nullable(Int64), 
    `pricehead` Nullable(Float32), 
    `cum_prd_qty` Int32, 
    `cum_pay_amt` Float32, 
    `stock_qty` Nullable(Float64), 
    `pay_cv_rate` Nullable(Float32), 
    `bwpz_key` Nullable(String)
) AS
SELECT 
    a.id AS id, 
    a.product_id AS product_id, 
    a.discounthead AS discounthead, 
    a.q2umeanpred AS q2umeanpred, 
    a.market_price AS market_price, 
    a.date_st AS date_st, 
    a.pred_week AS pred_week, 
    a.activddayshead AS activddayshead, 
    a.uvheadpred AS uvheadpred, 
    a.qtyheadpred AS qtyheadpred, 
    a.pricehead AS pricehead, 
    cs.cs_qty AS cum_prd_qty, 
    cs.cs_amt AS cum_pay_amt, 
    stock_qty, 
    pay_cv_rate, 
    bwpz_key
FROM 
(
    SELECT 
        *, 
        addDays(date_st, pred_week * 7) AS stat_end_date, 
        toDateTime(addDays(date_st, pred_week * 7)) AS dt_stat_end_date, 
        concat(product_id, '_', toString(toYYYYMMDD(addDays(toMonday(addDays(date_st, pred_week * 7)), -1)))) AS bwpz_key
    FROM spl_baicaowei.opt_dynamicprice_comman
) AS a
ANY LEFT JOIN vview_baicaowei.v2_fact_prd_stock_logs AS b ON (b.product_id = a.product_id) AND (b.store_date = a.stat_end_date)
ANY LEFT JOIN spl_baicaowei.ali_op_overall_op_logs AS c ON (c.prd_id = a.product_id) AND (a.stat_end_date = c.event_date)
ASOF LEFT JOIN vview_baicaowei.cumsum_prd_sale_logs AS cs ON (cs.product_id = a.product_id) AND (cs.dt_order_date <= a.dt_stat_end_date)
