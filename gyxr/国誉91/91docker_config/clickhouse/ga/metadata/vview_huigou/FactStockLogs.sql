ATTACH VIEW FactStockLogs
(
    `id` UInt64, 
    `DateKey` UInt32, 
    `store_date` DateTime, 
    `storehouse_code` Nullable(String), 
    `SKUKey` Int64, 
    `stock_qty` Nullable(Int64), 
    `on_road_qty` Nullable(Int64), 
    `order_qty` Nullable(Int64)
) AS
SELECT 
    id, 
    toYYYYMMDD(store_date) AS DateKey, 
    store_date, 
    storehouse_code, 
    m.id AS SKUKey, 
    stock_qty, 
    on_road_qty, 
    order_qty
FROM spl_huigou.src_warehouse_status_logs
ANY LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = sku
