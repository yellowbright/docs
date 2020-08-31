ATTACH VIEW v2_fact_prd_stock_logs
(
    `store_date` Nullable(Date), 
    `product_id` String, 
    `stock_qty` Nullable(Float64)
) AS
SELECT 
    store_date, 
    product_id, 
    sum(stock_qty) AS stock_qty
FROM 
(
    SELECT 
        store_date, 
        b.product_id, 
        stock_qty
    FROM 
    (
        SELECT *
        FROM spl_baicaowei.src_warehouse_status_logs
    ) AS a
    ANY LEFT JOIN 
    (
        SELECT 
            product_id, 
            sku
        FROM vview_baicaowei.pid_to_sku
    ) AS b ON a.sku = b.sku
)
WHERE trimBoth(product_id) != ''
GROUP BY 
    store_date, 
    product_id
