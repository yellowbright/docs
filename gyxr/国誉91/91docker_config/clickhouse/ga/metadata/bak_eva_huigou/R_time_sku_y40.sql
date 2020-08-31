ATTACH TABLE R_time_sku_y40
(
    `ordered_at` DateTime, 
    `sku` String, 
    `sale_y_40` Nullable(Float32), 
    `cat1` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
