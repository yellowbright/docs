ATTACH TABLE `.inner.opt_durationcontrol_spu_intermediate`
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
SETTINGS index_granularity = 8192
