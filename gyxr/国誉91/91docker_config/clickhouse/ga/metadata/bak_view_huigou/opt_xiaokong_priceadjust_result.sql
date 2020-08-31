ATTACH MATERIALIZED VIEW opt_xiaokong_priceadjust_result
(
    `预测日期` Date, 
    `DateKey` UInt32, 
    `SPUKey` UInt64, 
    `spu` String, 
    `skc` String, 
    `上架日期` Nullable(Date), 
    `吊牌价` Nullable(Float32), 
    `销售年` Nullable(UInt16), 
    `销售季` Nullable(String), 
    `单品生命周期` Nullable(String), 
    `季节生命周期` Nullable(String), 
    `利润模型` Nullable(String), 
    `爆旺平滞` Nullable(String), 
    `零售价` Nullable(Float32), 
    `折扣` Nullable(Float32), 
    `累计调价次数` Nullable(UInt16), 
    `是否建议调价` Nullable(UInt16)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(`预测日期`)
ORDER BY `预测日期`
SETTINGS index_granularity = 8192 AS
SELECT 
    toDate(date) AS `预测日期`, 
    toYYYYMMDD(date) AS DateKey, 
    m1.id AS SPUKey, 
    spu, 
    skc, 
    toDate(upper_time) AS `上架日期`, 
    tag_price AS `吊牌价`, 
    sale_year AS `销售年`, 
    sale_season AS `销售季`, 
    life AS `单品生命周期`, 
    season AS `季节生命周期`, 
    profitmodel AS `利润模型`, 
    bwpz AS `爆旺平滞`, 
    display_unit_price AS `零售价`, 
    discount AS `折扣`, 
    adjust_times_cumsum AS `累计调价次数`, 
    is_price_adjust_suggest AS `是否建议调价`
FROM eva_huigou.opt_xiaokong_priceadjust_result
LEFT JOIN spl_huigou.mapping_keys AS m1 ON m1.code = spu
