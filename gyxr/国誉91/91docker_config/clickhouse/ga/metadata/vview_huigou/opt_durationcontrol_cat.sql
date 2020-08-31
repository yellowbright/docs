ATTACH VIEW opt_durationcontrol_cat
(
    `id` UInt64, 
    `产品年季` String, 
    `cat1` String, 
    `cat2` String, 
    `cat3` String, 
    `cat4` String, 
    `大类` Nullable(String), 
    `中类` Nullable(String), 
    `小类` Nullable(String), 
    `小小类` Nullable(String), 
    `生命周期阶段` String, 
    `开始时间` Date, 
    `结束时间` Date
) AS
SELECT 
    id, 
    concat(sale_year, sale_season) AS `产品年季`, 
    cat1, 
    cat2, 
    cat3, 
    cat4, 
    p1.category_name AS `大类`, 
    p2.category_name AS `中类`, 
    p3.category_name AS `小类`, 
    p4.category_name AS `小小类`, 
    lable AS `生命周期阶段`, 
    toDate(begintime) AS `开始时间`, 
    toDate(endtime) AS `结束时间`
FROM eva_huigou.opt_durationcontrol_cat
ANY LEFT JOIN spl_huigou.src_product_levels AS p1 ON p1.category_code = cat1
ANY LEFT JOIN spl_huigou.src_product_levels AS p2 ON p2.category_code = cat2
ANY LEFT JOIN spl_huigou.src_product_levels AS p3 ON p3.category_code = cat3
ANY LEFT JOIN spl_huigou.src_product_levels AS p4 ON p4.category_code = cat4
