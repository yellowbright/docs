ATTACH VIEW DimSpu
(
    `spu` String, 
    `id` UInt64, 
    `SPUKey` UInt64, 
    `spu名称` Nullable(String), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat3` Nullable(String), 
    `cat4` Nullable(String), 
    `cat5` Nullable(String), 
    `supply_cycle` Nullable(Int64), 
    `min_order_count` Nullable(Float32), 
    `大类` Nullable(String), 
    `中类` Nullable(String), 
    `小类` Nullable(String), 
    `小小类` Nullable(String), 
    `子类` Nullable(String), 
    `吊牌价` Nullable(Float32), 
    `产品年` Nullable(Int64), 
    `产品季` Nullable(String), 
    `产品年季` Nullable(String), 
    `season_start_date` Nullable(Date), 
    `season_end_date` Nullable(Date)
) AS
SELECT DISTINCT 
    p.spu AS spu, 
    m.id AS id, 
    m.id AS SPUKey, 
    spu_name AS `spu名称`, 
    cat1, 
    cat2, 
    cat3, 
    cat4, 
    cat5, 
    supply_cycle, 
    min_order_count, 
    d1.category_name AS `大类`, 
    d2.category_name AS `中类`, 
    d3.category_name AS `小类`, 
    d4.category_name AS `小小类`, 
    d5.category_name AS `子类`, 
    tag_price AS `吊牌价`, 
    sale_year AS `产品年`, 
    sale_season AS `产品季`, 
    concat(toString(sale_year), sale_season) AS `产品年季`, 
    season_start_date, 
    season_end_date
FROM spl_huigou.src_products AS p
ANY LEFT JOIN spl_huigou.src_products AS pc ON pc.spu = p.spu
ANY LEFT JOIN spl_huigou.src_product_levels AS d1 ON d1.category_code = pc.cat1
ANY LEFT JOIN spl_huigou.src_product_levels AS d2 ON d2.category_code = pc.cat2
ANY LEFT JOIN spl_huigou.src_product_levels AS d3 ON d3.category_code = pc.cat3
ANY LEFT JOIN spl_huigou.src_product_levels AS d4 ON d4.category_code = pc.cat4
ANY LEFT JOIN spl_huigou.src_product_levels AS d5 ON d5.category_code = pc.cat5
ANY LEFT JOIN spl_huigou.src_product_sale_seasons AS ps ON ps.sku = p.sku
ANY LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = p.spu
