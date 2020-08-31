ATTACH MATERIALIZED VIEW pid_to_sku
(
    `product_id` String, 
    `sku` String
)
ENGINE = StripeLog() AS
SELECT 
    a.product_id, 
    b.sku
FROM 
(
    SELECT DISTINCT product_id
    FROM spl_baicaowei.src_order_logs
) AS a
ANY LEFT JOIN 
(
    SELECT 
        product_id, 
        sku
    FROM spl_baicaowei.src_order_logs
    GROUP BY 
        product_id, 
        sku
) AS b ON b.product_id = a.product_id
WHERE trimBoth(a.product_id) != ''
