ATTACH VIEW opt_dongtaidingjia
(
    `SPUKey` Int64, 
    `spu` String, 
    `skc` String, 
    `预测开始日期` DateTime, 
    `预测结束日期` DateTime, 
    `预测时长（天）` Nullable(Float32), 
    `预测量` Nullable(Float32), 
    `吊牌价` Nullable(Float32), 
    `预计折扣` Nullable(Float32), 
    `预计价格` Nullable(Float32), 
    `上架日期` DateTime, 
    `上架天数` Nullable(Float32), 
    `量本利销量` Nullable(Float32)
) AS
SELECT 
    m1.id AS SPUKey, 
    spu, 
    skc, 
    start_date AS `预测开始日期`, 
    end_date AS `预测结束日期`, 
    days AS `预测时长（天）`, 
    count AS `预测量`, 
    price AS `吊牌价`, 
    discount AS `预计折扣`, 
    pay_price AS `预计价格`, 
    onsale_date AS `上架日期`, 
    onsale_days AS `上架天数`, 
    pro_count AS `量本利销量`
FROM eva_huigou.opt_dongtaidingjia
ANY LEFT JOIN spl_huigou.mapping_keys AS m1 ON m1.code = spu
