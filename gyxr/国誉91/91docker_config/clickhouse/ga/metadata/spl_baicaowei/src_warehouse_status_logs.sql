ATTACH TABLE src_warehouse_status_logs
(
    `id` Int64, 
    `store_date` Nullable(Date), 
    `storehouse_code` Nullable(String), 
    `sku` Nullable(String), 
    `stock_qty` Nullable(Float32), 
    `on_road_qty` Nullable(Float32), 
    `order_qty` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
