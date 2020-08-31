ATTACH TABLE `.inner.sale_logs`
(
    `ordered_at` DateTime, 
    `shop_code` String, 
    `shop_name` Nullable(String), 
    `sku` String, 
    `pay_prd_qty` Nullable(Int64), 
    `pay_amt` Nullable(Float32), 
    `cat1name` Nullable(String), 
    `cat2name` Nullable(String), 
    `cat3name` Nullable(String), 
    `loc1name` Nullable(String), 
    `loc2name` Nullable(String), 
    `loc3name` Nullable(String), 
    `loc4name` Nullable(String), 
    `monthnameen` Nullable(String), 
    `yearnameen` Nullable(String), 
    `monthnamecnshort` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(ordered_at)
ORDER BY ordered_at
SETTINGS index_granularity = 8192
