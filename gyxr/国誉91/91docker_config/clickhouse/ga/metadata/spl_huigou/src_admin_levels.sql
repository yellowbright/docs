ATTACH TABLE src_admin_levels
(
    `id` Int64, 
    `admin_code` Nullable(String), 
    `admin_name` Nullable(String), 
    `parent_code` Nullable(String), 
    `level` Nullable(Int64), 
    `level_name` Nullable(String), 
    `is_leaf` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
