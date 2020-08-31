ATTACH TABLE sku_future_dis_girl
(
    `ordered_at` DateTime, 
    `sku` String, 
    `future_dis_mean_7_1t` Nullable(Float32), 
    `future_dis_mean_10_1t` Nullable(Float32), 
    `future_dis_mean_12_1t` Nullable(Float32), 
    `future_dis_mean_14_1t` Nullable(Float32), 
    `future_dis_mean_40_1t` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
