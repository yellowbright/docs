ATTACH TABLE opt_yuce_real_y
(
    `start_date` DateTime, 
    `sku` String, 
    `spu` String, 
    `cat1` Nullable(Float32), 
    `days` Nullable(Float32), 
    `real` Nullable(Float32)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(start_date)
ORDER BY (start_date, sku)
SETTINGS index_granularity = 8192
