ATTACH TABLE sku_future_cash_girl
(
    `ordered_at` DateTime, 
    `sku` String, 
    `future_dis_sum_7_1t` Nullable(Float32), 
    `future_dis_sum_10_1t` Nullable(Float32), 
    `future_dis_sum_12_1t` Nullable(Float32), 
    `future_dis_sum_14_1t` Nullable(Float32), 
    `future_dis_sum_40_1t` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
