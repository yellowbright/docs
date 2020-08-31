ATTACH VIEW v2_fact_profit_model_result
(
    `id` Int64, 
    `sku` String, 
    `time` Nullable(Date), 
    `year_season` Nullable(String), 
    `profit_model` Nullable(String), 
    `profit_margin` Nullable(Float32), 
    `pay_amt_season` Nullable(Float32), 
    `pay_prd_qty_season` Nullable(Float32), 
    `pay_prd_qty` Nullable(Float32), 
    `pay_prd_qty_yn` Nullable(String), 
    `pay_amt` Nullable(Float32), 
    `pay_amt_yn` Nullable(String), 
    `profitrate` Nullable(Float32), 
    `profitrate_yn` Nullable(String), 
    `cum_prd_qty` Int32, 
    `cum_pay_amt` Float32, 
    `stock_qty` Nullable(Float64)
) AS
SELECT 
    id, 
    sku, 
    time, 
    year_season, 
    profit_model, 
    profit_margin, 
    pay_amt_season, 
    pay_prd_qty_season, 
    pay_prd_qty, 
    pay_prd_qty_yn, 
    pay_amt, 
    pay_amt_yn, 
    profitrate, 
    profitrate_yn, 
    cs.cs_qty AS cum_prd_qty, 
    cs.cs_amt AS cum_pay_amt, 
    stock_qty
FROM 
(
    SELECT 
        *, 
        addDays(addMonths(time, 1), -1) AS end_of_month, 
        toDateTime(addDays(addMonths(time, 1), -1)) AS dt_end_of_month
    FROM spl_baicaowei.opt_profit_model_result
) AS a
ANY LEFT JOIN vview_baicaowei.v2_fact_sku_stock_logs AS b ON (b.sku = a.sku) AND (b.store_date = a.end_of_month)
ASOF LEFT JOIN vview_baicaowei.cumsum_sale_logs AS cs ON (cs.sku = a.sku) AND (cs.dt_order_date <= dt_end_of_month)
