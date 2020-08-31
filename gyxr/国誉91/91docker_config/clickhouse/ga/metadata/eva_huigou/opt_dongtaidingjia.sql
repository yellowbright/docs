ATTACH TABLE opt_dongtaidingjia
(
    `spu` String, 
    `skc` String, 
    `start_date` DateTime, 
    `end_date` DateTime, 
    `days` Nullable(Float32), 
    `count` Nullable(Float32), 
    `pro_count` Nullable(Float32), 
    `price` Nullable(Float32), 
    `pay_price` Nullable(Float32), 
    `discount` Nullable(Float32), 
    `onsale_date` DateTime, 
    `onsale_days` Nullable(Float32), 
    `cat1` Nullable(Float32), 
    `return` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (start_date, skc)
SETTINGS index_granularity = 8192
