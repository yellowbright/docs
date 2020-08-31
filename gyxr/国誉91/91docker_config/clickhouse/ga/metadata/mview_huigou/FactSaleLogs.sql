ATTACH MATERIALIZED VIEW FactSaleLogs
(
    `id` Int64, 
    `DateKey` UInt32, 
    `ordered_at` Date, 
    `order_no` Nullable(String), 
    `SHOPKey` Int64, 
    `SKUKey` Int64, 
    `CustomerKey` Int64, 
    `display_unit_price` Nullable(Float32), 
    `pay_unit_price` Nullable(Float32), 
    `pay_prd_qty` Nullable(Int64), 
    `pay_amt` Nullable(Float32)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY ordered_at
SETTINGS index_granularity = 8192 AS
SELECT 
    id, 
    toYYYYMMDD(ordered_at) AS DateKey, 
    toDate(ordered_at) AS ordered_at, 
    order_no, 
    m1.id AS SHOPKey, 
    m2.id AS SKUKey, 
    c.id AS CustomerKey, 
    display_unit_price, 
    pay_unit_price, 
    pay_prd_qty, 
    pay_amt
FROM spl_huigou.src_order_logs AS ord
LEFT JOIN spl_huigou.mapping_keys AS m1 ON m1.code = shop_code
LEFT JOIN spl_huigou.mapping_keys AS m2 ON m2.code = sku
LEFT JOIN spl_huigou.src_customers AS c ON c.customer_code = ord.customer_code
