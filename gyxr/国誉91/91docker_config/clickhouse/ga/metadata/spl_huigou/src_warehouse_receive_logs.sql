ATTACH TABLE src_warehouse_receive_logs
(
    `id` Int64, 
    `in_no` Nullable(String), 
    `in_date` Date, 
    `type` Nullable(String), 
    `out_no` Nullable(String), 
    `sender_code` Nullable(String), 
    `receiver_code` Nullable(String), 
    `sku` Nullable(String), 
    `qty` Nullable(Float32), 
    `total_cost` Nullable(Float32)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(in_date)
ORDER BY in_date
SETTINGS index_granularity = 8192
