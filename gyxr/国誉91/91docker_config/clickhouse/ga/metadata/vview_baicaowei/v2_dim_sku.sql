ATTACH VIEW v2_dim_sku
(
    `sku` Nullable(String), 
    `sku_name` Nullable(String), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat3` Nullable(String), 
    `cost` Nullable(Float64)
) AS
SELECT 
    a.sku, 
    sku_name, 
    cat1, 
    cat2, 
    cat3, 
    cost
FROM 
(
    SELECT DISTINCT sku
    FROM spl_baicaowei.src_products
) AS a
ANY LEFT JOIN 
(
    SELECT 
        sku, 
        sku_name, 
        cat1, 
        cat2, 
        cat3, 
        avg(toFloat32(p10)) AS cost
    FROM spl_baicaowei.src_products
    GROUP BY 
        sku, 
        sku_name, 
        cat1, 
        cat2, 
        cat3
) AS b ON a.sku = b.sku
