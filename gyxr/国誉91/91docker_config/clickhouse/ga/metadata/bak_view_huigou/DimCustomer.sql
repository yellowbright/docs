ATTACH VIEW DimCustomer
(
    `id` UInt64, 
    `CustomerKey` UInt64, 
    `join_date` Nullable(Date), 
    `shop_code` Nullable(String), 
    `customer_code` String, 
    `gender` String, 
    `birth_date` Nullable(Date)
) AS
SELECT 
    id, 
    id AS CustomerKey, 
    join_date, 
    shop_code, 
    customer_code, 
    gender, 
    birth_date
FROM spl_huigou.src_customers
