ATTACH TABLE opt_durationcontrol_season
(
    `id` UInt64, 
    `产品年季` String, 
    `生命周期阶段` String, 
    `开始时间` Date, 
    `结束时间` Date
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(`开始时间`)
ORDER BY `开始时间`
SETTINGS index_granularity = 8192
