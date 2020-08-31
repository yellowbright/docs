ATTACH MATERIALIZED VIEW FactReturnLogs
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
SETTINGS index_granularity = 8192 AS
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
