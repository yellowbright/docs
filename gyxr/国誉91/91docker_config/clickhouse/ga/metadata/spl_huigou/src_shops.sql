ATTACH TABLE src_shops
(
    `id` Int64, 
    `code` Nullable(String), 
    `open_date` Nullable(Date), 
    `close_date` Nullable(Date), 
    `name` Nullable(String), 
    `type` Nullable(String), 
    `is_online` Nullable(String), 
    `warehouse_code` Nullable(String), 
    `brand` Nullable(String), 
    `coop_method` Nullable(String), 
    `bus_district` Nullable(String), 
    `bus_type` Nullable(String), 
    `area` Nullable(Float32), 
    `area_range` Nullable(String), 
    `prd_rod_count` Nullable(Int64), 
    `facing` Nullable(String), 
    `hall` Nullable(String), 
    `bus_body` Nullable(String), 
    `market_rank` Nullable(String), 
    `loc1` Nullable(String), 
    `loc2` Nullable(String), 
    `loc3` Nullable(String), 
    `loc4` Nullable(String), 
    `city_rank` Nullable(String), 
    `city_type` Nullable(String), 
    `admin1` Nullable(String), 
    `admin2` Nullable(String), 
    `admin3` Nullable(String), 
    `admin4` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
