ATTACH MATERIALIZED VIEW FactSupplierStockInLogs
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
SETTINGS index_granularity = 8192 AS
SELECT 
    id, 
    toYYYYMMDD(in_date) AS DateKey, 
    sender_code, 
    receiver_code, 
    m.id AS SKUKey, 
    qty, 
    total_cost
FROM spl_huigou.src_warehouse_receive_logs
LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = sku
