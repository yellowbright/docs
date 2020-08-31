ATTACH TABLE src_warehouse_status_logs
(
    `id` UInt64, 
    `store_date` DateTime, 
    `storehouse_code` Nullable(String), 
    `sku` Nullable(String), 
    `stock_qty` Nullable(Int64), 
    `on_road_qty` Nullable(Int64), 
    `order_qty` Nullable(Int64)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(store_date)
ORDER BY id
SETTINGS index_granularity = 8192
