ATTACH TABLE R_store_sku_g_shop
(
    `ordered_at` DateTime, 
    `shop_num` Nullable(Float32), 
    `sku` String, 
    `cat1` Nullable(String), 
    `stock_qty` Nullable(Float32)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
