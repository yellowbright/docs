ATTACH TABLE `.inner.FactStockLogs`
(
    `id` UInt64, 
    `DateKey` UInt32, 
    `store_date` Date, 
    `storehouse_code` String, 
    `SKUKey` UInt64, 
    `stock_qty` Nullable(Float32), 
    `on_road_qty` Nullable(Float32), 
    `order_qty` Nullable(Float32)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(store_date)
ORDER BY id
SETTINGS index_granularity = 8192
