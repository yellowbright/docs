ATTACH TABLE opt_xiaokong_priceadjust_result_error
(
    `date` DateTime, 
    `skc` String, 
    `error_type` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(date)
ORDER BY (date, skc)
SETTINGS index_granularity = 8192
