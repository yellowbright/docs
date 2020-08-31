ATTACH TABLE predictResult
(
    `spu` String, 
    `sku` String, 
    `start_date` DateTime, 
    `end_date` DateTime, 
    `days` Nullable(Float32), 
    `real` Nullable(Float32), 
    `pre` Nullable(Float32), 
    `onsale_date` DateTime, 
    `onsale_days` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (start_date, sku)
SETTINGS index_granularity = 8192
