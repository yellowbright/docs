ATTACH TABLE opt_profit_model_result
(
    `id` UInt64, 
    `spu` String, 
    `cost` Float32, 
    `tag_price` Float32, 
    `cat1` String, 
    `cat2` String, 
    `cat3` String, 
    `cat4` String, 
    `cat5` String, 
    `sale_year` UInt16, 
    `sale_season` String, 
    `proModel` Float32, 
    `profit_model_num` String, 
    `profit_max` Float32, 
    `profit_min` Float32, 
    `profit_model` String
)
ENGINE = MergeTree()
ORDER BY spu
SETTINGS index_granularity = 8192
