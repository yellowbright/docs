ATTACH TABLE `.inner.FactSaleLogs`
(
    `id` Int64, 
    `DateKey` UInt32, 
    `ordered_at` DateTime, 
    `order_no` Nullable(String), 
    `SHOPKey` UInt64, 
    `SKUKey` UInt64, 
    `CustomerKey` Int64, 
    `display_unit_price` Nullable(Float32), 
    `pay_unit_price` Nullable(Float32), 
    `pay_prd_qty` Nullable(Int64), 
    `pay_amt` Nullable(Float32)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY DateKey
SETTINGS index_granularity = 8192
