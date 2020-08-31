ATTACH TABLE opt_xiaokong_priceadjust_result
(
    `date` DateTime, 
    `spu` String, 
    `skc` String, 
    `upper_time` Nullable(DateTime), 
    `tag_price` Nullable(Float32), 
    `sale_year` Nullable(UInt16), 
    `sale_season` Nullable(String), 
    `life` Nullable(String), 
    `season` Nullable(String), 
    `profitmodel` Nullable(String), 
    `bwpz` Nullable(String), 
    `skc_stock_qty` Nullable(Float32), 
    `skc_on_road_qty` Nullable(Float32), 
    `total_stock` Nullable(Float32), 
    `on_days` Nullable(Float32), 
    `display_unit_price` Nullable(Float32), 
    `skc_avg` Nullable(Float32), 
    `skc_sale_qty` Nullable(Float32), 
    `skc_pay_amt` Nullable(Float32), 
    `return_prd_qty` Nullable(Float32), 
    `return_amt` Nullable(Float32), 
    `discount` Nullable(Float32), 
    `is_price_adjust_actually` Nullable(UInt16), 
    `adjust_times_cumsum` Nullable(UInt16), 
    `adjust_time` Nullable(DateTime), 
    `adjust_interval` Nullable(Float32), 
    `adjust_interval_limit` Nullable(Float32), 
    `on_days_limit` Nullable(Float32), 
    `discount_limit` Nullable(Float32), 
    `adjust_times_limit` Nullable(Float32), 
    `action` Nullable(UInt16), 
    `season_end` DateTime, 
    `sold_days` Nullable(Float32), 
    `remain_days` Nullable(Float32), 
    `is_can_sales_completed` Nullable(UInt16), 
    `weekday` Nullable(UInt16), 
    `is_price_adjust_suggest` Nullable(UInt16)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(date)
ORDER BY (date, spu, skc)
SETTINGS index_granularity = 8192
