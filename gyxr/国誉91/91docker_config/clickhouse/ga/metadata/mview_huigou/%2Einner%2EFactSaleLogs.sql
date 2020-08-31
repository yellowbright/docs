ATTACH TABLE `.inner.FactSaleLogs`
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
SETTINGS index_granularity = 8192
