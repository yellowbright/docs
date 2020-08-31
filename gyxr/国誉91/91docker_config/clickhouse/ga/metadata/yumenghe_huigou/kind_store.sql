ATTACH TABLE kind_store
(
    `ordered_at` DateTime, 
    `sku` String, 
    `shop_kind` String, 
    `stock_qty` Nullable(Float32), 
    `on_road_qty` Nullable(Float32), 
    `order_qty` Nullable(Float32)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY (ordered_at, shop_kind, sku)
SETTINGS index_granularity = 8192
