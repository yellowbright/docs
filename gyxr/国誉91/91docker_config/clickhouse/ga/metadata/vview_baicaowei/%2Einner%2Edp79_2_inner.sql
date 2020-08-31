ATTACH TABLE `.inner.dp79_2_inner`
(
    `order_date` Date, 
    `shop_code` Nullable(String), 
    `sku` Nullable(String), 
    `tt_pay_prd_qty` AggregateFunction(sum, Float32), 
    `tt_pay_amt` AggregateFunction(sum, Float32)
)
ENGINE = AggregatingMergeTree()
PARTITION BY toYYYYMM(order_date)
ORDER BY order_date
SETTINGS index_granularity = 8192
