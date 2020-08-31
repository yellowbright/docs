ATTACH TABLE src_wego_season_life_config
(
    `id` Int64, 
    `sale_year` Nullable(Int64), 
    `sale_season` Nullable(String), 
    `lable` Nullable(String), 
    `begintime` Nullable(DateTime), 
    `endtime` Nullable(DateTime), 
    `created_at` Nullable(DateTime)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
