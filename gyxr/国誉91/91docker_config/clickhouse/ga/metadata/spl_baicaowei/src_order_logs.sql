ATTACH TABLE src_order_logs
(
    `id` Int64, 
    `ordered_at` DateTime, 
    `order_no` Nullable(String), 
    `shop_code` Nullable(String), 
    `sku` Nullable(String), 
    `customer_code` Nullable(String), 
    `display_unit_price` Nullable(Float32), 
    `pay_unit_price` Nullable(Float32), 
    `pay_prd_qty` Nullable(Float32), 
    `pay_amt` Nullable(Float32), 
    `province` Nullable(String), 
    `city` Nullable(String), 
    `area` Nullable(String), 
    `product_id` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY id
SETTINGS index_granularity = 8192
