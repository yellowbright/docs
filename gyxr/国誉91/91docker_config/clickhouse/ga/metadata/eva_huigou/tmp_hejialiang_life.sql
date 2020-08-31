ATTACH TABLE tmp_hejialiang_life
(
    `id` Int64, 
    `sale_year` Nullable(Int64), 
    `sale_season` Nullable(String), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat3` Nullable(String), 
    `cat4` Nullable(String), 
    `大类` Nullable(String), 
    `中类` Nullable(String), 
    `小类` Nullable(String), 
    `小小类` Nullable(String), 
    `spu` Nullable(String), 
    `life` Nullable(String), 
    `begin` Nullable(Date), 
    `end` Nullable(Date)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
