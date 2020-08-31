ATTACH TABLE `.inner.opt_durationcontrol_cat_intermediate`
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
SETTINGS index_granularity = 8192
