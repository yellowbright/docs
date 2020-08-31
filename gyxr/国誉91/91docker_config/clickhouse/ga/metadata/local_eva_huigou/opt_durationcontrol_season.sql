ATTACH TABLE opt_durationcontrol_season
(
    `id` UInt64, 
    `sale_year` String, 
    `sale_season` String, 
    `lable` String, 
    `begintime` DateTime, 
    `endtime` DateTime, 
    `created_at` DateTime
)
ENGINE = MergeTree()
ORDER BY (sale_year, sale_season)
SETTINGS index_granularity = 8192
