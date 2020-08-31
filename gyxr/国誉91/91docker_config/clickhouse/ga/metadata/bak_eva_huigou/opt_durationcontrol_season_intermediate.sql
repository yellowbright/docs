ATTACH TABLE opt_durationcontrol_season_intermediate
(
    `id` UInt64, 
    `firstStart` DateTime, 
    `endStart` DateTime, 
    `ordered_at` DateTime, 
    `begin_ordered_at` DateTime, 
    `end_ordered_at` DateTime, 
    `sale_year` String, 
    `sale_season` String, 
    `lable` String, 
    `pay_prd_qty` Nullable(Float32), 
    `pay_amt` Nullable(Float32), 
    `return_prd_qty` Nullable(Float32), 
    `return_amt` Nullable(Float32), 
    `pay_prd_qty_sum` Nullable(Float32), 
    `created_at` DateTime
)
ENGINE = MergeTree()
ORDER BY (sale_year, sale_season)
SETTINGS index_granularity = 8192
