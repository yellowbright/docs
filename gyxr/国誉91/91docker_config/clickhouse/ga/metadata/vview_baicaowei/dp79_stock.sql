ATTACH VIEW dp79_stock
(
    `store_date` Nullable(Date), 
    `sku` Nullable(String), 
    `stock_qty` Nullable(Float64), 
    `stock_order_qty` Nullable(Float64)
) AS
SELECT 
    store_date, 
    sku, 
    sum(stock_qty) AS stock_qty, 
    sum(order_qty) AS stock_order_qty
FROM spl_baicaowei.src_warehouse_status_logs
GROUP BY 
    store_date, 
    sku
