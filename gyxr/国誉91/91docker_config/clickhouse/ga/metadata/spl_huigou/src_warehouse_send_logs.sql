ATTACH TABLE src_warehouse_send_logs
(
    `id` Int64, 
    `out_no` Nullable(String), 
    `type` Nullable(String), 
    `send_date` Nullable(DateTime), 
    `expected_receive_date` Nullable(DateTime), 
    `sender_code` Nullable(String), 
    `receiver_code` Nullable(String), 
    `sku` Nullable(String), 
    `qty` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
