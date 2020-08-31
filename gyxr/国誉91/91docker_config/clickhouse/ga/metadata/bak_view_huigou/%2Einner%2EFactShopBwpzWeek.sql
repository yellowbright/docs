ATTACH TABLE `.inner.FactShopBwpzWeek`
(
    `channel_level` Nullable(String), 
    `channel_code` Nullable(String), 
    `SPUKey` UInt64, 
    `爆旺平滞结果` Nullable(String), 
    `判定爆旺平滞时间` Date, 
    `在架时长` Nullable(String), 
    `品牌BWPZ` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY `判定爆旺平滞时间`
SETTINGS index_granularity = 8192
