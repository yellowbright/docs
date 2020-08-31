ATTACH TABLE src_customers
(
    `id` Int64, 
    `join_date` Nullable(Date), 
    `shop_code` Nullable(String), 
    `customer_code` Nullable(String), 
    `gender` Nullable(String), 
    `birth_date` Nullable(Date)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
