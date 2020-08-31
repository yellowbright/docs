ATTACH VIEW FactSupplierStockInLogs
(
    `id` Int64, 
    `DateKey` UInt32, 
    `in_date` Date, 
    `sender_code` Nullable(String), 
    `receiver_code` Nullable(String), 
    `SKUKey` Int64, 
    `qty` Nullable(Float32), 
    `total_cost` Nullable(Float32)
) AS
SELECT 
    id, 
    toYYYYMMDD(in_date) AS DateKey, 
    in_date, 
    sender_code, 
    receiver_code, 
    m.id AS SKUKey, 
    qty, 
    total_cost
FROM spl_huigou.src_warehouse_receive_logs
LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = sku
