ATTACH TABLE opt_bwpz_error
(
    `shop_code` Nullable(String), 
    `spu` Nullable(String), 
    `sku` Nullable(String), 
    `error_type` String
)
ENGINE = MergeTree()
ORDER BY error_type
SETTINGS index_granularity = 8192
