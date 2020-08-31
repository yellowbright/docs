ATTACH MATERIALIZED VIEW FactStockLogs
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
SETTINGS index_granularity = 8192 AS
SELECT 
    id, 
    toYYYYMMDD(store_date) AS DateKey, 
    store_date, 
    storehouse_code, 
    m.id AS SKUKey, 
    stock_qty, 
    on_road_qty, 
    order_qty
FROM spl_huigou.src_warehouse_status_logs_filter0
ANY LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = sku
