ATTACH TABLE DimCustomer
(
    `id` UInt64, 
    `CustomerKey` UInt64, 
    `join_date` Nullable(Date), 
    `shop_code` Nullable(String), 
    `customer_code` String, 
    `gender` String, 
    `birth_date` Nullable(Date)
)
ENGINE = StripeLog
