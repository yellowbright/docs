ATTACH TABLE opt_bwpz_result
(
    `id` Int64, 
    `channel_level` Nullable(String), 
    `channel_code` Nullable(String), 
    `cat_level` Nullable(String), 
    `min_unit` Nullable(String), 
    `bus_category` Nullable(String), 
    `is_online` Nullable(Int8), 
    `cycle_type` Nullable(String), 
    `prd_season` Nullable(String), 
    `channel1` Nullable(String), 
    `channel2` Nullable(String), 
    `channel3` Nullable(String), 
    `channel4` Nullable(String), 
    `channel5` Nullable(String), 
    `channel6` Nullable(String), 
    `channel7` Nullable(String), 
    `channel8` Nullable(String), 
    `channel9` Nullable(String), 
    `channel10` Nullable(String), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat3` Nullable(String), 
    `cat4` Nullable(String), 
    `cat5` Nullable(String), 
    `spu` Nullable(String), 
    `skc` Nullable(String), 
    `sku` Nullable(String), 
    `bwpz` Nullable(String), 
    `is_observed` Nullable(String), 
    `stage_st` Nullable(Date), 
    `stage_ed` Nullable(Date), 
    `year` Nullable(Int64), 
    `season` Nullable(String), 
    `month` Nullable(Int64), 
    `week` Nullable(Date), 
    `bwpz_score` Nullable(String), 
    `status` Nullable(Int64), 
    `created_at` Nullable(DateTime), 
    `updated_at` Nullable(DateTime), 
    `cat_value` Nullable(String), 
    `cycle_value` Nullable(String), 
    `product_id` Nullable(String), 
    `uv` Nullable(Float32), 
    `uv_norm` Nullable(Float32), 
    `uv_wt` Nullable(Float32), 
    `pay_prd_qty` Nullable(Float32), 
    `pay_prd_qty_norm` Nullable(Float32), 
    `pay_prd_qty_wt` Nullable(Float32), 
    `pay_amt` Nullable(Float32), 
    `pay_amt_norm` Nullable(Float32), 
    `pay_amt_wt` Nullable(Float32), 
    `per_pft` Nullable(Float32), 
    `per_pft_norm` Nullable(Float32), 
    `per_pft_wt` Nullable(Float32), 
    `collects` Nullable(Float32), 
    `collects_norm` Nullable(Float32), 
    `collects_wt` Nullable(Float32), 
    `carts` Nullable(Float32), 
    `carts_norm` Nullable(Float32), 
    `carts_wt` Nullable(Float32), 
    `pay_rate` Nullable(Float32), 
    `pay_rate_norm` Nullable(Float32), 
    `pay_rate_wt` Nullable(Float32), 
    `bounce_rate` Nullable(Float32), 
    `bounce_rate_norm` Nullable(Float32), 
    `bounce_rate_wt` Nullable(Float32), 
    `rank` Nullable(Float32), 
    `qty` Nullable(Float32), 
    `amt` Nullable(Float32), 
    `seg_cond` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
