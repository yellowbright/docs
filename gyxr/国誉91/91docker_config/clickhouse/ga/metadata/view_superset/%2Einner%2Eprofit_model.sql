ATTACH TABLE `.inner.profit_model`
(
    `spu` String, 
    `tag_price` Nullable(Float32), 
    `avg_unit_cost` Nullable(Float64), 
    `profit_rate` Nullable(Float64), 
    `profit_model` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY spu
SETTINGS index_granularity = 8192
