ATTACH VIEW FactReturnLogs
(
    `id` Int64, 
    `DateKey` UInt32, 
    `returned_at` Date, 
    `SHOPKey` Int64, 
    `SKUKey` Int64, 
    `return_prd_qty` Nullable(Float32), 
    `return_amt` Nullable(Float32), 
    `reason` Nullable(String), 
    `order_no` Nullable(String), 
    `return_no` Nullable(String)
) AS
SELECT 
    id, 
    toYYYYMMDD(returned_at) AS DateKey, 
    toDate(returned_at) AS returned_at, 
    m1.id AS SHOPKey, 
    m2.id AS SKUKey, 
    return_prd_qty, 
    return_amt, 
    reason, 
    order_no, 
    return_no
FROM spl_huigou.src_order_return_logs AS t1
LEFT JOIN spl_huigou.mapping_keys AS m1 ON m1.code = shop_code
LEFT JOIN spl_huigou.mapping_keys AS m2 ON m2.code = sku
