ATTACH TABLE R_return_sku_y14
(
    `ordered_at` DateTime, 
    `sku` String, 
    `diff_3_mean_1t` Nullable(Float32), 
    `mean_3_decay_1t` Nullable(Float32), 
    `mean_3_1t` Nullable(Float32), 
    `median_3_1t` Nullable(Float32), 
    `min_3_1t` Nullable(Float32), 
    `max_3_1t` Nullable(Float32), 
    `std_3_1t` Nullable(Float32), 
    `diff_7_mean_1t` Nullable(Float32), 
    `mean_7_decay_1t` Nullable(Float32), 
    `mean_7_1t` Nullable(Float32), 
    `median_7_1t` Nullable(Float32), 
    `min_7_1t` Nullable(Float32), 
    `max_7_1t` Nullable(Float32), 
    `std_7_1t` Nullable(Float32), 
    `diff_14_mean_1t` Nullable(Float32), 
    `mean_14_decay_1t` Nullable(Float32), 
    `mean_14_1t` Nullable(Float32), 
    `median_14_1t` Nullable(Float32), 
    `min_14_1t` Nullable(Float32), 
    `max_14_1t` Nullable(Float32), 
    `std_14_1t` Nullable(Float32), 
    `diff_28_mean_1t` Nullable(Float32), 
    `mean_28_decay_1t` Nullable(Float32), 
    `mean_28_1t` Nullable(Float32), 
    `median_28_1t` Nullable(Float32), 
    `min_28_1t` Nullable(Float32), 
    `max_28_1t` Nullable(Float32), 
    `std_28_1t` Nullable(Float32), 
    `has_sales_days_in_last_3_1t` Nullable(Float32), 
    `last_has_sales_day_in_last_3_1t` Nullable(Float32), 
    `first_has_sales_day_in_last_3_1t` Nullable(Float32), 
    `has_sales_days_in_last_7_1t` Nullable(Float32), 
    `last_has_sales_day_in_last_7_1t` Nullable(Float32), 
    `first_has_sales_day_in_last_7_1t` Nullable(Float32), 
    `has_sales_days_in_last_14_1t` Nullable(Float32), 
    `last_has_sales_day_in_last_14_1t` Nullable(Float32), 
    `first_has_sales_day_in_last_14_1t` Nullable(Float32), 
    `has_sales_days_in_last_28_1t` Nullable(Float32), 
    `last_has_sales_day_in_last_28_1t` Nullable(Float32), 
    `first_has_sales_day_in_last_28_1t` Nullable(Float32), 
    `return_y_14` Nullable(Float32), 
    `cat1` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
