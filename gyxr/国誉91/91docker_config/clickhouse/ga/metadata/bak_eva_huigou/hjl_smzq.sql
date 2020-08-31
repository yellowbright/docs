ATTACH TABLE hjl_smzq
(
    `spu` String, 
    `life` String, 
    `begin` Date, 
    `dt` Date
)
ENGINE = MergeTree()
ORDER BY dt
SETTINGS index_granularity = 8192
