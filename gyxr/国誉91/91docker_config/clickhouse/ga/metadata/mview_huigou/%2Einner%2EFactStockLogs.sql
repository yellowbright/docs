ATTACH TABLE `.inner.FactStockLogs`
(
    `id` UInt64, 
    `DateKey` UInt32, 
    `store_date` DateTime, 
    `storehouse_code` Nullable(String), 
    `SKUKey` Int64, 
    `stock_qty` Nullable(Int64), 
    `on_road_qty` Nullable(Int64), 
    `order_qty` Nullable(Int64)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(store_date)
ORDER BY store_date
SETTINGS index_granularity = 8192
