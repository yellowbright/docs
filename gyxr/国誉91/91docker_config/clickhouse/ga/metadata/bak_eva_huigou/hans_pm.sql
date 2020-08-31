ATTACH TABLE hans_pm
(
    `spu` String, 
    `profit_number` UInt8, 
    `profit_model` String, 
    `batch_no` String
)
ENGINE = MergeTree()
ORDER BY spu
SETTINGS index_granularity = 8192
