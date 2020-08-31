ATTACH TABLE opt_yuce
(
    `SPUKey` UInt64, 
    `SKUKey` UInt64, 
    `spu` String, 
    `sku` String, 
    `预测时长（天）` Nullable(Float32), 
    `预测开始日期` Date, 
    `预测结束日期` Date, 
    `真实值` Nullable(Float32), 
    `预测值` Nullable(Float32), 
    `上架日期` Date, 
    `上架天数` Nullable(Float32)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(`预测开始日期`)
ORDER BY `预测开始日期`
SETTINGS index_granularity = 8192
