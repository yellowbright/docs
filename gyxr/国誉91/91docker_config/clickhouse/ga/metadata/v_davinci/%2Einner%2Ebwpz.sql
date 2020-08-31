ATTACH TABLE `.inner.bwpz`
(
    `order_date` Date, 
    `ordered_at` DateTime, 
    `qty` Nullable(Int64), 
    `unit_price` Nullable(Float32), 
    `shop_code` String, 
    `amt` Nullable(Float32), 
    `sku_code` String, 
    `spu_code` Nullable(String), 
    `bwpz` Nullable(String), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat3` Nullable(String), 
    `cat4` Nullable(String), 
    `cat5` Nullable(String), 
    `shop_name` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(order_date)
ORDER BY order_date
SETTINGS index_granularity = 8192
