ATTACH TABLE opt_durationcontrol_cat_error
(
    `id` UInt64, 
    `sale_year` String, 
    `sale_season` String, 
    `cat1` String, 
    `cat2` String, 
    `cat3` String, 
    `cat4` String, 
    `lable` String, 
    `begintime` DateTime, 
    `endtime` DateTime, 
    `fu` Nullable(Int64), 
    `created_at` DateTime
)
ENGINE = MergeTree()
ORDER BY (sale_year, sale_season)
SETTINGS index_granularity = 8192
