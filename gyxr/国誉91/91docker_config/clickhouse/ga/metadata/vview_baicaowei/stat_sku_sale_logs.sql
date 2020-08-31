ATTACH TABLE stat_sku_sale_logs
(
    `sku` String, 
    `stat_start_date` Date, 
    `stat_end_date` Date, 
    `sum_qty` Nullable(Float64), 
    `sum_amt` Nullable(Float64)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(stat_start_date)
ORDER BY stat_start_date
SETTINGS index_granularity = 8192
