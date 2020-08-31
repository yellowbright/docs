ATTACH TABLE opt_dongtaidingjia
(
    `SPUKey` UInt64, 
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
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(`预测开始日期`)
ORDER BY `预测开始日期`
SETTINGS index_granularity = 8192
