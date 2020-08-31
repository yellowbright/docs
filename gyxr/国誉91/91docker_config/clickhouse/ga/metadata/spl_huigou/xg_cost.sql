ATTACH TABLE xg_cost
(
    `barcodeid` Nullable(String), 
    `cost` Int64
)
ENGINE = MergeTree()
ORDER BY cost
SETTINGS index_granularity = 8192
