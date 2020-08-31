ATTACH VIEW DimShop
(
    `SHOPKey` Int64, 
    `shop_code` Nullable(String), 
    `店铺` Nullable(String), 
    `warehouse_code` Nullable(String), 
    `渠道品牌` Nullable(String), 
    `商圈类型` Nullable(String), 
    `店铺面积` Nullable(Float32), 
    `loc1` Nullable(String), 
    `loc2` Nullable(String), 
    `loc3` Nullable(String), 
    `loc4` Nullable(String), 
    `admin1` Nullable(String), 
    `admin2` Nullable(String), 
    `admin3` Nullable(String), 
    `admin4` Nullable(String), 
    `县区` Nullable(String), 
    `城市` Nullable(String), 
    `省份` Nullable(String), 
    `地区` Nullable(String), 
    `店长` Nullable(String), 
    `督导` Nullable(String), 
    `运营经理` Nullable(String), 
    `总经理` Nullable(String)
) AS
SELECT 
    mapping_keys.id AS SHOPKey, 
    shp.code AS shop_code, 
    name AS `店铺`, 
    warehouse_code, 
    brand AS `渠道品牌`, 
    bus_type AS `商圈类型`, 
    area AS `店铺面积`, 
    loc1, 
    loc2, 
    loc3, 
    loc4, 
    admin1, 
    admin2, 
    admin3, 
    admin4, 
    l1.area_name AS `县区`, 
    l2.area_name AS `城市`, 
    l3.area_name AS `省份`, 
    l4.area_name AS `地区`, 
    a1.admin_name AS `店长`, 
    a2.admin_name AS `督导`, 
    a3.admin_name AS `运营经理`, 
    a4.admin_name AS `总经理`
FROM spl_huigou.src_shops AS shp
ANY LEFT JOIN spl_huigou.mapping_keys ON mapping_keys.code = shp.code
ANY LEFT JOIN spl_huigou.src_admin_levels AS a1 ON a1.admin_code = admin1
ANY LEFT JOIN spl_huigou.src_admin_levels AS a2 ON a2.admin_code = admin2
ANY LEFT JOIN spl_huigou.src_admin_levels AS a3 ON a3.admin_code = admin3
ANY LEFT JOIN spl_huigou.src_admin_levels AS a4 ON a4.admin_code = admin4
ANY LEFT JOIN spl_huigou.src_area_levels AS l1 ON l1.area_code = loc1
ANY LEFT JOIN spl_huigou.src_area_levels AS l2 ON l2.area_code = loc2
ANY LEFT JOIN spl_huigou.src_area_levels AS l3 ON l3.area_code = loc3
ANY LEFT JOIN spl_huigou.src_area_levels AS l4 ON l4.area_code = loc4
