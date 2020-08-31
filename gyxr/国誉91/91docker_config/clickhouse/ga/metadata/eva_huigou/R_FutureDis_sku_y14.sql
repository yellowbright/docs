ATTACH TABLE R_FutureDis_sku_y14
(
    `ordered_at` DateTime, 
    `sku` String, 
    `future_dis_sum_14_1t` Nullable(Float32), 
    `cat1` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
