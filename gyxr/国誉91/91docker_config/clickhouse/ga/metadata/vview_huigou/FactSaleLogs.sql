ATTACH VIEW FactSaleLogs
(
    `id` Int64, 
    `DateKey` UInt32, 
    `ordered_at` Date, 
    `order_no` Nullable(String), 
    `SHOPKey` UInt64, 
    `SKUKey` UInt64, 
    `CustomerKey` Int64, 
    `display_unit_price` Nullable(Float32), 
    `pay_unit_price` Nullable(Float32), 
    `pay_prd_qty` Nullable(Int64), 
    `pay_amt` Nullable(Float32)
) AS
SELECT 
    id, 
    toYYYYMMDD(ordered_at) AS DateKey, 
    toDate(ordered_at) AS ordered_at, 
    order_no, 
    dictGet('default.mapping_keys', 'id', tuple(shop_code)) AS SHOPKey, 
    dictGet('default.mapping_keys', 'id', tuple(sku)) AS SKUKey, 
    c.id AS CustomerKey, 
    display_unit_price, 
    pay_unit_price, 
    pay_prd_qty, 
    pay_amt
FROM spl_huigou.src_order_logs AS ord
LEFT JOIN spl_huigou.src_customers AS c ON c.customer_code = ord.customer_code
