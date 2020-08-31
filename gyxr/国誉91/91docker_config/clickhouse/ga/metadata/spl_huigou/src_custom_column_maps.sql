ATTACH TABLE src_custom_column_maps
(
    `id` String, 
    `column_name` Nullable(String), 
    `table_name` Nullable(String), 
    `description` Nullable(String), 
    `created_at` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
