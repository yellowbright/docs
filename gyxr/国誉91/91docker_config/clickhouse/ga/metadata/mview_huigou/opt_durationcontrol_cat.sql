ATTACH TABLE opt_durationcontrol_cat
(
    `id` UInt64, 
    `产品年季` String, 
    `cat1` String, 
    `cat2` String, 
    `cat3` String, 
    `cat4` String, 
    `大类` Nullable(String), 
    `中类` Nullable(String), 
    `小类` Nullable(String), 
    `小小类` Nullable(String), 
    `生命周期阶段` String, 
    `开始时间` Date, 
    `结束时间` Date
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(`开始时间`)
ORDER BY `开始时间`
SETTINGS index_granularity = 8192
