ATTACH TABLE xxx
(
    `id` Int8, 
    `f_int` Nullable(Int8), 
    `name` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
