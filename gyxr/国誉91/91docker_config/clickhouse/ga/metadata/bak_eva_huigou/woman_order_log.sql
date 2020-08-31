ATTACH TABLE woman_order_log
(
    `ordered_at` DateTime, 
    `order_no` Nullable(String), 
    `shop_code` String, 
    `sku` String, 
    `customer_code` Nullable(String), 
    `display_unit_price` Nullable(Float32), 
    `pay_unit_price` Nullable(Float32), 
    `pay_prd_qty` Nullable(Float32), 
    `pay_amt` Nullable(Float32), 
    `created_at` Nullable(DateTime), 
    `updated_at` Nullable(String), 
    `skc` String, 
    `spu` String, 
    `spu_name` Nullable(String), 
    `skc_name` Nullable(String), 
    `sku_name` Nullable(String), 
    `demo_prd_code` Nullable(String), 
    `bus_category` Nullable(String), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat3` Nullable(String), 
    `cat4` Nullable(String), 
    `cat5` Nullable(String), 
    `min_order_count` Nullable(UInt16), 
    `cat1_name` Nullable(String), 
    `cat2_name` Nullable(String), 
    `cat3_name` Nullable(String), 
    `cat4_name` Nullable(String), 
    `cat5_name` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY (ordered_at, shop_code, sku)
SETTINGS index_granularity = 8192
