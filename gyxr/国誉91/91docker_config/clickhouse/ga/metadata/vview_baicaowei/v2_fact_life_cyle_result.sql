ATTACH VIEW v2_fact_life_cyle_result
(
    `id` Int64, 
    `ordered_at` Nullable(Date), 
    `stage` Nullable(String), 
    `stage_st` Nullable(Date), 
    `sku` String, 
    `cum_amt` Nullable(Float32), 
    `rank_amt` Nullable(Int64), 
    `cum_profit` Nullable(Float32), 
    `rank_profit` Nullable(Int64), 
    `sale_speed` Nullable(Float32), 
    `score` Nullable(Float32), 
    `rank` Nullable(Int64), 
    `status` Nullable(Int64), 
    `pay_amt` Nullable(Float32), 
    `pay_prd_qty` Nullable(Float32), 
    `cum_prd_qty` Int32, 
    `cum_pay_amt` Float32, 
    `stock_qty` Nullable(Float64)
) AS
SELECT 
    id, 
    ordered_at, 
    stage, 
    stage_st, 
    sku, 
    cum_amt, 
    rank_amt, 
    cum_profit, 
    rank_profit, 
    sale_speed, 
    score, 
    rank, 
    status, 
    cum_amt AS pay_amt, 
    cum_qty AS pay_prd_qty, 
    cs.cs_qty AS cum_prd_qty, 
    cs.cs_amt AS cum_pay_amt, 
    stock_qty
FROM 
(
    SELECT 
        *, 
        toDateTime(ordered_at) AS dt_ordered_at
    FROM spl_baicaowei.opt_life_cycle_result
) AS a
ANY LEFT JOIN vview_baicaowei.v2_fact_sku_stock_logs AS b ON (b.sku = a.sku) AND (ordered_at = b.store_date)
ASOF LEFT JOIN vview_baicaowei.cumsum_sale_logs AS cs ON (cs.sku = a.sku) AND (cs.dt_order_date <= a.dt_ordered_at)
