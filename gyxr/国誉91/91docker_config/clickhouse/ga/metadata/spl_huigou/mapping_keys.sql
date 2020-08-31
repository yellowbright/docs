ATTACH TABLE mapping_keys
(
    `id` Int64, 
    `code` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
