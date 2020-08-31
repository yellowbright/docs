ATTACH TABLE opt_yuce
(
    `spu` String, 
    `sku` String, 
    `start_date` DateTime, 
    `end_date` DateTime, 
    `days` Nullable(Float32), 
    `real` Nullable(Float32), 
    `pre` Nullable(Float32), 
    `p` Nullable(Float32), 
    `onsale_date` DateTime, 
    `onsale_days` Nullable(Float32), 
    `cat1` Nullable(Float32), 
    `return` Nullable(Float32), 
    `is_count` Int8 DEFAULT CAST(1, 'Int8')
)
ENGINE = MergeTree()
ORDER BY (start_date, sku)
SETTINGS index_granularity = 8192
