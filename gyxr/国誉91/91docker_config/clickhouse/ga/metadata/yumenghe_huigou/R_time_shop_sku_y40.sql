ATTACH TABLE R_time_shop_sku_y40
(
    `ordered_at` DateTime, 
    `shop_code` String, 
    `sku` String, 
    `sale_y_40` Nullable(Float32), 
    `cat1` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
