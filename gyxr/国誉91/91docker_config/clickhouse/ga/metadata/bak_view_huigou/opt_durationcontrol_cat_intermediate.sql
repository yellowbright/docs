ATTACH MATERIALIZED VIEW opt_durationcontrol_cat_intermediate
(
    `id` UInt64, 
    `周一日期` Date, 
    `周数` String, 
    `cat1` String, 
    `cat2` String, 
    `cat3` String, 
    `cat4` String, 
    `大类` Nullable(String), 
    `中类` Nullable(String), 
    `小类` Nullable(String), 
    `小小类` Nullable(String), 
    `产品年` String, 
    `产品季` String, 
    `上架日期` Date, 
    `平均成本` Nullable(Float32), 
    `吊牌价金额` Nullable(Float32), 
    `销量` Nullable(Float32), 
    `零售价金额` Nullable(Float32), 
    `单款周销售速度` Nullable(Float32), 
    `零售价折扣` Nullable(Float32), 
    `盈亏值` Nullable(Float32), 
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
    cat1, 
    cat2, 
    cat3, 
    cat4, 
    p1.category_name AS `大类`, 
    p2.category_name AS `中类`, 
    p3.category_name AS `小类`, 
    p4.category_name AS `小小类`, 
    sale_year AS `产品年`, 
    sale_season AS `产品季`, 
    toDate(firstStart) AS `上架日期`, 
    cost AS `平均成本`, 
    tag_amt AS `吊牌价金额`, 
    pay_prd_qty AS `销量`, 
    display_unit_amt AS `零售价金额`, 
    historyavgweekpty AS `单款周销售速度`, 
    discount AS `零售价折扣`, 
    bep AS `盈亏值`, 
    growing_rate AS `速度增幅`, 
    y.lable AS `生命周期状态`
FROM eva_huigou.opt_durationcontrol_cat_intermediate AS x
ANY LEFT JOIN spl_huigou.src_product_levels AS p1 ON p1.category_code = x.cat1
ANY LEFT JOIN spl_huigou.src_product_levels AS p2 ON p2.category_code = x.cat2
ANY LEFT JOIN spl_huigou.src_product_levels AS p3 ON p3.category_code = x.cat3
ANY LEFT JOIN spl_huigou.src_product_levels AS p4 ON p4.category_code = x.cat4
ASOF INNER JOIN eva_huigou.opt_durationcontrol_cat AS y ON (y.cat4 = x.cat4) AND (ordered_at >= y.begintime)
