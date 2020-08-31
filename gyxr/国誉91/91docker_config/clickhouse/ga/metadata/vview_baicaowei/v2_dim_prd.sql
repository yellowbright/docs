ATTACH VIEW v2_dim_prd
(
    `product_id` Nullable(String), 
    `product_name` Nullable(String), 
    `sku` Nullable(String), 
    `cost` Nullable(Float32), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat3` Nullable(String)
) AS
SELECT 
    a.product_id AS product_id, 
    c.sku_name AS product_name, 
    b.sku AS sku, 
    cost, 
    cat1, 
    cat2, 
    cat3
FROM 
(
    SELECT DISTINCT product_id
    FROM spl_baicaowei.src_order_logs
    WHERE trimBoth(product_id) != ''
) AS a
ANY LEFT JOIN 
(
    SELECT DISTINCT 
        product_id, 
        sku
    FROM spl_baicaowei.src_order_logs
) AS b ON a.product_id = b.product_id
ANY LEFT JOIN 
(
    SELECT 
        sku, 
        sku_name, 
        cat1, 
        cat2, 
        cat3, 
        toFloat32(p10) AS cost
    FROM spl_baicaowei.src_products
) AS c ON c.sku = b.sku
