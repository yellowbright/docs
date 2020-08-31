ATTACH TABLE opt_dynamicprice_active
(
    `id` Int64, 
    `product_id` Nullable(String), 
    `discounthead` Nullable(Float32), 
    `q2umeanpred` Nullable(Float32), 
    `market_price` Nullable(Float32), 
    `date_st` Nullable(Date), 
    `days` Nullable(Int64), 
    `qtyheadpred` Nullable(Int64), 
    `pricehead` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
