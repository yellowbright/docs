ATTACH TABLE src_area_levels
(
    `id` Int64, 
    `area_code` Nullable(String), 
    `area_name` Nullable(String), 
    `parent_code` Nullable(String), 
    `level` Nullable(Int64), 
    `level_name` Nullable(String), 
    `is_leaf` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
