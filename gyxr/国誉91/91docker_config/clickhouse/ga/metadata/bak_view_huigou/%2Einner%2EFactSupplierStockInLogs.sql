ATTACH TABLE `.inner.FactSupplierStockInLogs`
(
    `id` UInt64, 
    `DateKey` UInt64, 
    `sender_code` String, 
    `receiver_code` String, 
    `SKUKey` UInt64, 
    `qty` UInt64, 
    `total_cost` Float32
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
