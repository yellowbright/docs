ATTACH TABLE src_product_upper_records
(
    `id` UInt64, 
    `shop_code` String, 
    `sku` String, 
    `upper_time` DateTime, 
    `sale_year` UInt16, 
    `sale_season` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(upper_time)
ORDER BY upper_time
SETTINGS index_granularity = 8192
