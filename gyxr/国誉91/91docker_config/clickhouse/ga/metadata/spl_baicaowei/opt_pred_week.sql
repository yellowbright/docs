ATTACH TABLE opt_pred_week
(
    `id` Int64, 
    `sku` Nullable(String), 
    `first` Nullable(String), 
    `second` Nullable(String), 
    `predict` Nullable(Float32), 
    `true` Nullable(Float32), 
    `date` Nullable(Date)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
