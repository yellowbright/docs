ATTACH TABLE FactBwpzWeek
(
    `channel_level` Nullable(String), 
    `channel_code` Nullable(String), 
    `SPUKey` UInt64, 
    `bwpz_order` Nullable(Float32), 
    `爆旺平滞结果` Nullable(String), 
    `综合得分` Nullable(Float32), 
    `在架时长` Nullable(String), 
    `历史取数开始时间` Date, 
    `历史取数结束时间` Date, 
    `判定日期内销售天数` Nullable(Float32), 
    `销售额` Nullable(Float32), 
    `销售速度` Nullable(Float32), 
    `单件毛利额` Nullable(Float32), 
    `销售额标准化值` Nullable(Float32), 
    `速度标准化值` Nullable(Float32), 
    `单件毛利额标准化值` Nullable(Float32), 
    `销售额权重` Nullable(Float32), 
    `销售速度权重` Nullable(Float32), 
    `单件毛利额权重` Nullable(Float32), 
    `排名` Nullable(Float32), 
    `销售量` Nullable(Float32), 
    `平均成本` Nullable(Float32), 
    `判定爆旺平滞时间` Date
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(`判定爆旺平滞时间`)
ORDER BY `判定爆旺平滞时间`
SETTINGS index_granularity = 8192
