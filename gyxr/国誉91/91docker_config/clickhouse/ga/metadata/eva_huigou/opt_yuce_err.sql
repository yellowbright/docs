ATTACH TABLE opt_yuce_err
(
    `sku` String, 
    `ordered_at` DateTime, 
    `err_info` String, 
    `err_from` String, 
    `comment` String
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
