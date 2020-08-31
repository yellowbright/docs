ATTACH TABLE src_order_logs
(
    `id` Int64, 
    `ordered_at` DateTime, 
    `order_no` Nullable(String), 
    `shop_code` String, 
    `sku` String, 
    `customer_code` Nullable(String), 
    `display_unit_price` Nullable(Float32), 
    `pay_unit_price` Nullable(Float32), 
    `pay_prd_qty` Nullable(Int64), 
    `pay_amt` Nullable(Float32), 
    `province` Nullable(String), 
    `city` Nullable(String), 
    `area` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY (ordered_at, shop_code, sku)
SETTINGS index_granularity = 8192
