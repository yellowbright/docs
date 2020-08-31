ATTACH MATERIALIZED VIEW sku_daily_sale_logs
(
    `ordered_at` Date, 
    `sku` Nullable(String), 
    `qty` AggregateFunction(sum, Float32), 
    `amt` AggregateFunction(sum, Float32)
)
ENGINE = AggregatingMergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY ordered_at
SETTINGS index_granularity = 8192 AS
SELECT 
    toDate(ordered_at) AS ordered_at, 
    sku, 
    sumState(pay_prd_qty) AS qty, 
    sumState(pay_amt) AS amt
FROM spl_baicaowei.src_order_logs
GROUP BY 
    ordered_at, 
    sku
