ATTACH TABLE src_order_return_logs
(
    `id` Int64, 
    `returned_at` DateTime, 
    `shop_code` Nullable(String), 
    `sku` Nullable(String), 
    `return_prd_qty` Nullable(Float32), 
    `return_amt` Nullable(Float32), 
    `reason` Nullable(String), 
    `order_no` Nullable(String), 
    `return_no` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(returned_at)
ORDER BY returned_at
SETTINGS index_granularity = 8192
