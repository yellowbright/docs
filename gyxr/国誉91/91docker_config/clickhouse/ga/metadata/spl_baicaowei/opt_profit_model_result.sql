ATTACH TABLE opt_profit_model_result
(
    `id` Int64, 
    `sku` Nullable(String), 
    `time` Nullable(Date), 
    `year_season` Nullable(String), 
    `profit_model` Nullable(String), 
    `profit_margin` Nullable(Float32), 
    `pay_amt_season` Nullable(Float32), 
    `pay_prd_qty_season` Nullable(Float32), 
    `pay_prd_qty` Nullable(Float32), 
    `pay_prd_qty_yn` Nullable(String), 
    `pay_amt` Nullable(Float32), 
    `pay_amt_yn` Nullable(String), 
    `profitrate` Nullable(Float32), 
    `profitrate_yn` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
