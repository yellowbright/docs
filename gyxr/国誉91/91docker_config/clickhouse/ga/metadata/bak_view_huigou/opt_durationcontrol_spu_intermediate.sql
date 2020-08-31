ATTACH MATERIALIZED VIEW opt_durationcontrol_spu_intermediate
(
    `id` UInt64, 
    `周一日期` Date, 
    `周数` String, 
    `spu` String, 
    `大类` Nullable(String), 
    `中类` Nullable(String), 
    `小类` Nullable(String), 
    `小小类` Nullable(String), 
    `上架日期` Date, 
    `平均成本` Nullable(Float32), 
    `吊牌价` Nullable(Float32), 
    `零售价` Nullable(Float32), 
    `销售速度` Nullable(Float32), 
    `零售价折扣` Nullable(Float32), 
    `盈亏` Nullable(Float32), 
    `速度增幅` Nullable(Float32), 
    `生命周期状态` String
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(`周一日期`)
ORDER BY id
SETTINGS index_granularity = 8192 AS
SELECT 
    id, 
    toDate(modordered_at) AS `周一日期`, 
    weekid AS `周数`, 
    spu, 
    p1.category_name AS `大类`, 
    p2.category_name AS `中类`, 
    p3.category_name AS `小类`, 
    p4.category_name AS `小小类`, 
    toDate(firstStart) AS `上架日期`, 
    cost AS `平均成本`, 
    tag_price AS `吊牌价`, 
    avg_display_unit AS `零售价`, 
    avgweekpty AS `销售速度`, 
    discount AS `零售价折扣`, 
    bep AS `盈亏`, 
    growing_rate AS `速度增幅`, 
    y.lable AS `生命周期状态`
FROM eva_huigou.opt_durationcontrol_spu_intermediate AS x
ANY LEFT JOIN spl_huigou.src_product_levels AS p1 ON p1.category_code = cat1
ANY LEFT JOIN spl_huigou.src_product_levels AS p2 ON p2.category_code = cat2
ANY LEFT JOIN spl_huigou.src_product_levels AS p3 ON p3.category_code = cat3
ANY LEFT JOIN spl_huigou.src_product_levels AS p4 ON p4.category_code = cat4
ASOF INNER JOIN eva_huigou.opt_durationcontrol_spu AS y ON (y.spu = x.spu) AND (ordered_at >= y.begintime)
