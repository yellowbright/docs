ATTACH TABLE priceResult
(
    `spu` String, 
    `start_date` DateTime, 
    `end_date` DateTime, 
    `days` Nullable(Float32), 
    `count` Nullable(Float32), 
    `price` Nullable(Float32), 
    `pay_price` Nullable(Float32), 
    `discount` Nullable(Float32), 
    `onsale_date` DateTime, 
    `onsale_days` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (start_date, spu)
SETTINGS index_granularity = 8192
