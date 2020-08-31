ATTACH TABLE src_order_sku
(
    `ordered_at` DateTime, 
    `sku` String, 
    `pay_prd_qty` Nullable(Int64), 
    `pay_amt` Nullable(Float32)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
