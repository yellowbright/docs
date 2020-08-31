ATTACH TABLE `.inner.FactReturnLogs`
(
    `id` UInt32, 
    `DateKey` UInt32, 
    `returned_at` Date, 
    `SHOPKey` UInt32, 
    `SKUKey` UInt32, 
    `return_prd_qty` Int16, 
    `return_amt` Float32, 
    `reason` Nullable(String), 
    `order_no` Nullable(String), 
    `return_no` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(returned_at)
ORDER BY DateKey
SETTINGS index_granularity = 8192
