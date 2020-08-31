ATTACH TABLE opt_profit_model_error
(
    `id` UInt64, 
    `spu` String, 
    `sale_year` String, 
    `sale_season` String, 
    `content` String, 
    `created_at` DateTime
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
