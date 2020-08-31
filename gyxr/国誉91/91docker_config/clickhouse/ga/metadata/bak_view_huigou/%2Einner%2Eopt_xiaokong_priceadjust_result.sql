ATTACH TABLE `.inner.opt_xiaokong_priceadjust_result`
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
SETTINGS index_granularity = 8192
