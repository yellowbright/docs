ATTACH VIEW DimSku
(
    `id` Int64, 
    `SKUKey` Int64, 
    `sku` Nullable(String), 
    `skc` Nullable(String), 
    `spu` Nullable(String), 
    `颜色` Nullable(String), 
    `尺码` Nullable(String), 
    `单件成本` Nullable(Float64)
) AS
SELECT 
    mapping_keys.id AS id, 
    mapping_keys.id AS SKUKey, 
    p.sku AS sku, 
    skc, 
    spu, 
    skc_name AS `颜色`, 
    sku_name AS `尺码`, 
    avg_unit_cost AS `单件成本`
FROM spl_huigou.src_products AS p
ANY LEFT JOIN spl_huigou.mapping_keys ON mapping_keys.code = p.sku
ANY LEFT JOIN 
(
    SELECT 
        sku AS _sku, 
        sum(unit_cost * order_prd_qty) / sum(order_prd_qty) AS avg_unit_cost
    FROM spl_huigou.src_supplier_order_logs
    GROUP BY sku
) AS x2 ON x2._sku = p.sku
