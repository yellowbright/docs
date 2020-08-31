ATTACH TABLE src_wego_season_time_config
(
    `id` Int64, 
    `sale_year` Nullable(Int64), 
    `sale_season` Nullable(String), 
    `cat1` Nullable(String), 
    `cat1_name` Nullable(String), 
    `begintime` Nullable(DateTime), 
    `endtime` Nullable(DateTime), 
    `created_at` Nullable(DateTime)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
