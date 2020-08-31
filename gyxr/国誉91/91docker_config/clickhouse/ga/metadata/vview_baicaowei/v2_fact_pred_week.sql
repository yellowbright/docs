ATTACH VIEW v2_fact_pred_week
(
    `id` Int64, 
    `sku` String, 
    `first` Nullable(String), 
    `second` Nullable(String), 
    `predict` Nullable(Float32), 
    `true` Nullable(Float32), 
    `date` Nullable(Date), 
    `cum_prd_qty` Int32, 
    `cum_pay_amt` Float32, 
    `stock_qty` Nullable(Float64), 
    `pay_prd_qty` Nullable(Float64), 
    `pay_amt` Nullable(Float64), 
    `qty_level` String
) AS
SELECT 
    id, 
    sku, 
    first, 
    second, 
    predict, 
    true, 
    date, 
    cs_qty AS cum_prd_qty, 
    cs_amt AS cum_pay_amt, 
    stock_qty, 
    sum_qty AS pay_prd_qty, 
    sum_amt AS pay_amt, 
    multiIf(sum_qty >= 90000, '9万以上(含9万)', sum_qty >= 70000, '7-9万(含7万)', sum_qty >= 50000, '5-7万(含5万)', sum_qty >= 30000, '3-5万(含3万)', sum_qty >= 10000, '1-3万(含1万)', sum_qty >= 5000, '5千-1万(含5千)', sum_qty >= 2000, '2-5千(含2千)', '2千以下') AS qty_level
FROM 
(
    SELECT 
        *, 
        toDateTime(date) AS dt_date
    FROM spl_baicaowei.opt_pred_week
) AS opt
ANY LEFT JOIN vview_baicaowei.v2_fact_sku_stock_logs AS w ON (w.sku = opt.sku) AND (store_date = date)
ANY LEFT JOIN vview_baicaowei.stat_sku_sale_logs AS s30 ON (s30.sku = opt.sku) AND (stat_end_date = date)
ASOF LEFT JOIN vview_baicaowei.cumsum_sale_logs AS cs ON (cs.sku = opt.sku) AND (cs.dt_order_date <= dt_date)
