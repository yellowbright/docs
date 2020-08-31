ATTACH TABLE src_wego_skc_plan_config
(
    `id` UInt64, 
    `shop_code` Nullable(String), 
    `shop_name` Nullable(String), 
    `cat2` Nullable(String), 
    `cat2_name` Nullable(String), 
    `skc_plan_maxcount` Nullable(Int64), 
    `skc_plan_mincount` Nullable(Int64)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
