ATTACH TABLE opt_life_cycle_result
(
    `id` Int64, 
    `ordered_at` Nullable(Date), 
    `stage` Nullable(String), 
    `stage_st` Nullable(Date), 
    `sku` Nullable(String), 
    `cum_amt` Nullable(Float32), 
    `rank_amt` Nullable(Int64), 
    `cum_profit` Nullable(Float32), 
    `rank_profit` Nullable(Int64), 
    `sale_speed` Nullable(Float32), 
    `score` Nullable(Float32), 
    `rank` Nullable(Int64), 
    `status` Nullable(Int64), 
    `cum_qty` Nullable(Float32), 
    `created_at` Nullable(DateTime), 
    `updated_at` Nullable(DateTime)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
