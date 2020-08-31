ATTACH TABLE R_time_sku_y10
(
    `ordered_at` DateTime, 
    `sku` String, 
    `sale_y_10` Nullable(Float32), 
    `cat1` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
