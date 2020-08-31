ATTACH TABLE `.inner.sku_daily_sale_logs`
(
    `ordered_at` Date, 
    `sku` Nullable(String), 
    `qty` AggregateFunction(sum, Float32), 
    `amt` AggregateFunction(sum, Float32)
)
ENGINE = AggregatingMergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY ordered_at
SETTINGS index_granularity = 8192
