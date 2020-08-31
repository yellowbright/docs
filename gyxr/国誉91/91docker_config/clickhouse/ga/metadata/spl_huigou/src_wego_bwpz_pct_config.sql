ATTACH TABLE src_wego_bwpz_pct_config
(
    `id` Int64, 
    `cat1` Nullable(String), 
    `pct_bao` Nullable(Float32), 
    `pct_wang` Nullable(Float32), 
    `pct_ping1` Nullable(Float32), 
    `pct_ping2` Nullable(Float32), 
    `pct_zhi` Nullable(Float32), 
    `created_at` Nullable(DateTime), 
    `updated_at` Nullable(DateTime)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
