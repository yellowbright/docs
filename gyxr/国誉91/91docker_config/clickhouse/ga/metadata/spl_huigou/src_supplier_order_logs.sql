ATTACH TABLE src_supplier_order_logs
(
    `id` UInt64, 
    `batch_no` Nullable(String), 
    `order_date` Nullable(Date), 
    `supplier_code` Nullable(String), 
    `sku` Nullable(String), 
    `sale_year` Nullable(Int64), 
    `sale_season` Nullable(String), 
    `order_prd_qty` Nullable(Float32), 
    `unit_cost` Nullable(Float32), 
    `expected_receive_date` Nullable(Date)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
