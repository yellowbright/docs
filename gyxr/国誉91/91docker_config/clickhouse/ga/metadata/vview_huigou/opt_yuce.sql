ATTACH VIEW opt_yuce
(
    `SPUKey` Int64, 
    `SKUKey` Int64, 
    `spu` String, 
    `_sku` String, 
    `预测时长（天）` Nullable(Float32), 
    `预测开始日期` Date, 
    `预测结束日期` Date, 
    `真实值` Nullable(Float32), 
    `预测值` Nullable(Float32), 
    `上架日期` Date, 
    `上架天数` Nullable(Float32)
) AS
SELECT 
    m1.id AS SPUKey, 
    m2.id AS SKUKey, 
    a.spu AS spu, 
    a.sku AS _sku, 
    days AS `预测时长（天）`, 
    toDate(a.start_date) AS `预测开始日期`, 
    toDate(a.end_date) AS `预测结束日期`, 
    r.real AS `真实值`, 
    pre AS `预测值`, 
    toDate(onsale_date) AS `上架日期`, 
    onsale_days AS `上架天数`
FROM eva_huigou.opt_yuce AS a
ANY LEFT JOIN spl_huigou.mapping_keys AS m1 ON m1.code = a.spu
ANY LEFT JOIN spl_huigou.mapping_keys AS m2 ON m2.code = a.sku
ANY LEFT JOIN eva_huigou.opt_yuce_real_y AS r ON (r.sku = a.sku) AND (r.start_date = a.start_date) AND (r.days = a.days)
