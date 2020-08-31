ATTACH TABLE price_display
(
    `ordered_at` DateTime, 
    `sku` String, 
    `display_past_sum_3` Nullable(Float32), 
    `display_past_sum_7` Nullable(Float32), 
    `display_fur_sum_3` Nullable(Float32), 
    `display_fur_sum_7` Nullable(Float32), 
    `mun_past_sum_3` Nullable(Float32), 
    `mun_past_sum_7` Nullable(Float32), 
    `mun_fur_sum_3` Nullable(Float32), 
    `mun_fur_sum_7` Nullable(Float32), 
    `cat1` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
