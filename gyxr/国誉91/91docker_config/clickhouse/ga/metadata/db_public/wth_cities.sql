ATTACH TABLE wth_cities
(
    `id` Int64, 
    `city_pinyin` Nullable(String), 
    `city` Nullable(String), 
    `province` Nullable(String), 
    `city_short2` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
