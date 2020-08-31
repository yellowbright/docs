ATTACH MATERIALIZED VIEW prd_daily_sale_logs
(
    `ordered_at` Date, 
    `product_id` Nullable(String), 
    `qty` AggregateFunction(sum, Float32), 
    `amt` AggregateFunction(sum, Float32)
)
ENGINE = AggregatingMergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY ordered_at
SETTINGS index_granularity = 8192 AS
SELECT 
    toDate(ordered_at) AS ordered_at, 
    product_id, 
    sumState(pay_prd_qty) AS qty, 
    sumState(pay_amt) AS amt
FROM spl_baicaowei.src_order_logs
WHERE trimBoth(product_id) != ''
GROUP BY 
    ordered_at, 
    product_id
