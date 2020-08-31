ATTACH TABLE opt_durationcontrol_products_temperature
(
    `id` Int64, 
    `city_num` Nullable(String), 
    `city` Nullable(String), 
    `province` Nullable(String), 
    `solar_date` Nullable(DateTime), 
    `week` Nullable(Float32), 
    `avg_temperature` Nullable(String), 
    `season` Nullable(String), 
    `year` Nullable(String), 
    `created_at` Nullable(DateTime)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
