ATTACH TABLE dressing_index
(
    `id` Int64, 
    `solar_date` Nullable(DateTime), 
    `city_num` Nullable(String), 
    `city` Nullable(String), 
    `max_temperature` Nullable(String), 
    `min_temperature` Nullable(String), 
    `avg_temperature` Nullable(String), 
    `dressing_index` Nullable(String), 
    `created_at` Nullable(DateTime)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
