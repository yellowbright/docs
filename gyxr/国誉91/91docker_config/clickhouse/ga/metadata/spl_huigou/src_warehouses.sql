ATTACH TABLE src_warehouses
(
    `id` Int64, 
    `code` Nullable(String), 
    `type` Nullable(String), 
    `address` Nullable(String), 
    `belong` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
