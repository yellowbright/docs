ATTACH TABLE FactSupplierStockInLogs
(
    `id` UInt64, 
    `DateKey` UInt64, 
    `in_date` Date, 
    `sender_code` String, 
    `receiver_code` String, 
    `SKUKey` UInt64, 
    `qty` UInt64, 
    `total_cost` Float32
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(in_date)
ORDER BY in_date
SETTINGS index_granularity = 8192
