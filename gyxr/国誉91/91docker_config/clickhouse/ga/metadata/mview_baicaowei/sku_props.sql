ATTACH MATERIALIZED VIEW sku_props
(
    `sku` String, 
    `cat1` String, 
    `cat2` String, 
    `cat3` String, 
    `cost` Float32
)
ENGINE = StripeLog() AS
SELECT 
    a.sku, 
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
        cat1, 
        cat2, 
        cat3, 
        avg(toFloat32(p10)) AS cost
    FROM spl_baicaowei.src_products
    GROUP BY 
        sku, 
        cat1, 
        cat2, 
        cat3
) AS b ON a.sku = b.sku
