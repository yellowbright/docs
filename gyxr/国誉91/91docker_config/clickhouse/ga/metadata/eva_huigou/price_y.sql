ATTACH TABLE price_y
(
    `ordered_at` DateTime, 
    `sku` String, 
    `num_y_1` Nullable(Float32), 
    `num_y_3` Nullable(Float32), 
    `num_y_7` Nullable(Float32), 
    `pay_y_1` Nullable(Float32), 
    `pay_y_3` Nullable(Float32), 
    `pay_y_7` Nullable(Float32), 
    `cat1` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
