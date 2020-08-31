ATTACH TABLE opt_durationcontrol_spu
(
    `id` UInt64, 
    `sale_year` String, 
    `sale_season` String, 
    `cat1` String, 
    `cat2` String, 
    `cat3` String, 
    `cat4` String, 
    `spu` String, 
    `lable` String, 
    `begintime` DateTime, 
    `endtime` DateTime, 
    `created_at` DateTime
)
ENGINE = MergeTree()
ORDER BY (sale_year, sale_season)
SETTINGS index_granularity = 8192
