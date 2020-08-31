ATTACH TABLE `.inner.spu_sale_logs`
(
    `order_date` Date, 
    `shop_name` Nullable(String), 
    `spu` Nullable(String), 
    `qty` Nullable(Int64), 
    `amt` Nullable(Float64)
)
ENGINE = MergeTree()
ORDER BY order_date
SETTINGS index_granularity = 8192
