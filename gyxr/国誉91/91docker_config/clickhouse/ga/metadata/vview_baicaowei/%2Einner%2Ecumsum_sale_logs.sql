ATTACH TABLE `.inner.cumsum_sale_logs`
(
    `order_date` Date, 
    `dt_order_date` DateTime, 
    `sku` String, 
    `qty` Int32, 
    `cs_qty` Int32, 
    `amt` Float32, 
    `cs_amt` Float32
)
ENGINE = MergeTree()
ORDER BY order_date
SETTINGS index_granularity = 8192
