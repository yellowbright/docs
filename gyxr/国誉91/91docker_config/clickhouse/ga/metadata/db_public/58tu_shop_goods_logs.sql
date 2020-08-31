ATTACH TABLE `58tu_shop_goods_logs`
(
    `id` UInt64, 
    `item_title` Nullable(String), 
    `item_id` UInt64, 
    `date` Date, 
    `newsale_date` Nullable(String), 
    `category_1_id` Nullable(Int64), 
    `category_1_name` Nullable(String), 
    `category_2_id` Nullable(Int64), 
    `category_2_name` Nullable(String), 
    `category_id` Nullable(Int64), 
    `category_name` Nullable(String), 
    `soldnum_d` Nullable(Int64), 
    `soldnum_m` Nullable(Int64), 
    `soldnum` Nullable(Int64), 
    `price` Nullable(Float32), 
    `old_price` Nullable(Float32), 
    `price_name` Nullable(String), 
    `stock` Nullable(Int64), 
    `favcount` Nullable(Int64), 
    `onsale` Nullable(Int8), 
    `link` Nullable(String), 
    `image` Nullable(String), 
    `shop_id` Nullable(Int64)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(date)
ORDER BY date
SETTINGS index_granularity = 8192
