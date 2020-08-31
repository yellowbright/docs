ATTACH TABLE stat_prd_sale_logs
(
    `product_id` String, 
    `stat_start_date` Date, 
    `stat_end_date` Date, 
    `sum_qty` Nullable(Float64), 
    `sum_amt` Nullable(Float64)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(stat_start_date)
ORDER BY stat_start_date
SETTINGS index_granularity = 8192
