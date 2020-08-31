ATTACH MATERIALIZED VIEW pm_sale_logs
(
    `ordered_at` DateTime, 
    `shop_code` String, 
    `shop_name` Nullable(String), 
    `sku` String, 
    `pay_prd_qty` Nullable(Int64), 
    `pay_amt` Nullable(Float32), 
    `cat1name` Nullable(String), 
    `cat2name` Nullable(String), 
    `cat3name` Nullable(String), 
    `loc1name` Nullable(String), 
    `loc2name` Nullable(String), 
    `loc3name` Nullable(String), 
    `loc4name` Nullable(String), 
    `monthnameen` Nullable(String), 
    `yearnameen` Nullable(String), 
    `monthnamecnshort` Nullable(String), 
    `unit_price` Nullable(Float32), 
    `unit_cost` Nullable(Float64), 
    `spu` String, 
    `tag_price` Nullable(Float32), 
    `profit_model` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY ordered_at
SETTINGS index_granularity = 8192 AS
SELECT 
    t1.ordered_at AS ordered_at, 
    t1.shop_code AS shop_code, 
    t4.name AS shop_name, 
    t1.sku AS sku, 
    t1.pay_prd_qty AS pay_prd_qty, 
    t1.pay_amt AS pay_amt, 
    p1.category_name AS cat1name, 
    p2.category_name AS cat2name, 
    p3.category_name AS cat3name, 
    a1.area_name AS loc1name, 
    a2.area_name AS loc2name, 
    a3.area_name AS loc3name, 
    a4.area_name AS loc4name, 
    t3.monthnameen AS monthnameen, 
    t3.yearnameen AS yearnameen, 
    t3.monthnamecnshort AS monthnamecnshort, 
    t1.pay_unit_price AS unit_price, 
    t5.avg_unit_cost AS unit_cost, 
    t5.spu AS spu, 
    t5.tag_price AS tag_price, 
    t5.profit_model AS profit_model
FROM spl_huigou.src_order_logs AS t1
ANY LEFT JOIN spl_huigou.src_products AS t2 ON t2.sku = t1.sku
ANY LEFT JOIN db_public.DimDate AS t3 ON t3.datekey = toInt64(toYYYYMMDD(t1.ordered_at))
ANY LEFT JOIN spl_huigou.src_product_levels AS p1 ON p1.category_code = t2.cat1
ANY LEFT JOIN spl_huigou.src_product_levels AS p2 ON p2.category_code = t2.cat2
ANY LEFT JOIN spl_huigou.src_product_levels AS p3 ON p3.category_code = t2.cat3
ANY LEFT JOIN spl_huigou.src_shops AS t4 ON t4.code = t1.shop_code
ANY LEFT JOIN spl_huigou.src_area_levels AS a1 ON a1.area_code = t4.loc1
ANY LEFT JOIN spl_huigou.src_area_levels AS a2 ON a2.area_code = t4.loc2
ANY LEFT JOIN spl_huigou.src_area_levels AS a3 ON a3.area_code = t4.loc3
ANY LEFT JOIN spl_huigou.src_area_levels AS a4 ON a4.area_code = t4.loc4
ANY LEFT JOIN view_superset.profit_model AS t5 ON t5.spu = t2.spu
