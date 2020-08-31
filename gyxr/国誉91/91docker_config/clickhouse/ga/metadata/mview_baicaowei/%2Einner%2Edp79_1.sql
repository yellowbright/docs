ATTACH TABLE `.inner.dp79_1`
(
    `order_date` Date, 
    `province` Nullable(String), 
    `city` Nullable(String), 
    `area` Nullable(String), 
    `tt_pay_prd_qty` Nullable(Float64), 
    `tt_pay_amt` Nullable(Float64), 
    `avg_pay_unit_price` Nullable(Float64)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(order_date)
ORDER BY order_date
SETTINGS index_granularity = 8192
