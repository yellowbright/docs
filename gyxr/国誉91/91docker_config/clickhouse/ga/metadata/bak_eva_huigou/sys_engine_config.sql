ATTACH TABLE sys_engine_config
(
    `id` Int32, 
    `key` String, 
    `description` Nullable(String), 
    `value` String
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
