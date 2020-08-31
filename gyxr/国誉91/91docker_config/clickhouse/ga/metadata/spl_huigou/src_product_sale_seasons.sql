ATTACH TABLE src_product_sale_seasons
(
    `id` Int64, 
    `create_date` Nullable(Date), 
    `sku` Nullable(String), 
    `tag_price` Nullable(Float32), 
    `yikou_price` Nullable(Float32), 
    `sale_season` Nullable(String), 
    `sale_year` Nullable(Int64), 
    `wave_band` Nullable(String), 
    `season_start_date` Nullable(Date), 
    `season_end_date` Nullable(Date)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
