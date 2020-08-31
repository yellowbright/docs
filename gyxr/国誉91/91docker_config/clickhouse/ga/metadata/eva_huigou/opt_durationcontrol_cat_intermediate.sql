ATTACH TABLE opt_durationcontrol_cat_intermediate
(
    `id` UInt64, 
    `firstStart` DateTime, 
    `endStart` DateTime, 
    `ordered_at` DateTime, 
    `modordered_at` DateTime, 
    `begin_ordered_at` DateTime, 
    `end_ordered_at` DateTime, 
    `order_date` DateTime, 
    `sale_year` String, 
    `sale_season` String, 
    `weekid` String, 
    `cat1` String, 
    `cat2` String, 
    `cat3` String, 
    `cat4` String, 
    `spuNum` String, 
    `cost` Nullable(Float32), 
    `tag_amt` Nullable(Float32), 
    `display_unit_amt` Nullable(Float32), 
    `pay_prd_qty` Nullable(Float32), 
    `pay_amt` Nullable(Float32), 
    `return_prd_qty` Nullable(Float32), 
    `return_amt` Nullable(Float32), 
    `avgweekpty` Nullable(Float32), 
    `discount` Nullable(Float32), 
    `historyavgweekpty` Nullable(Float32), 
    `action` String, 
    `qtyCum` Nullable(Float32), 
    `amtCum` Nullable(Float32), 
    `bep` Nullable(Float32), 
    `lable` String, 
    `growing_rate` Nullable(Float32), 
    `beplable` String, 
    `discountlable` String, 
    `created_at` DateTime
)
ENGINE = MergeTree()
ORDER BY (sale_year, sale_season)
SETTINGS index_granularity = 8192
