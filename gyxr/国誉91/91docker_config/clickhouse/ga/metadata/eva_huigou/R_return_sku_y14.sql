ATTACH TABLE R_return_sku_y14
(
    `ordered_at` DateTime, 
    `sku` String, 
    `return_y_14` Nullable(Float32), 
    `cat1` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
