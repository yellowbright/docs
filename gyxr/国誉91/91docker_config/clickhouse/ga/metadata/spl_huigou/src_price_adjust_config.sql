ATTACH TABLE src_price_adjust_config
(
    `id` Int64, 
    `season` Nullable(String), 
    `profitmodel` Nullable(String), 
    `bwpz` Nullable(String), 
    `life` Nullable(String), 
    `adjust_interval_limit` Nullable(Int64), 
    `on_days_limit` Nullable(Int64), 
    `discount_limit` Nullable(Float32), 
    `adjust_times_limit` Nullable(Int64), 
    `action` Nullable(String), 
    `created_at` Nullable(DateTime), 
    `updated_at` Nullable(DateTime)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
