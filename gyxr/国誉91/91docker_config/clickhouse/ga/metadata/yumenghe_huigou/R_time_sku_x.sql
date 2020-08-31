ATTACH TABLE R_time_sku_x
(
    `ordered_at` DateTime, 
    `sku` String, 
    `sale_season` String, 
    `sale_diff_3_mean_1t` Nullable(Float32), 
    `sale_mean_3_decay_1t` Nullable(Float32), 
    `sale_mean_3_1t` Nullable(Float32), 
    `sale_median_3_1t` Nullable(Float32), 
    `sale_min_3_1t` Nullable(Float32), 
    `sale_max_3_1t` Nullable(Float32), 
    `sale_std_3_1t` Nullable(Float32), 
    `sale_diff_7_mean_1t` Nullable(Float32), 
    `sale_mean_7_decay_1t` Nullable(Float32), 
    `sale_mean_7_1t` Nullable(Float32), 
    `sale_median_7_1t` Nullable(Float32), 
    `sale_min_7_1t` Nullable(Float32), 
    `sale_max_7_1t` Nullable(Float32), 
    `sale_std_7_1t` Nullable(Float32), 
    `sale_diff_14_mean_1t` Nullable(Float32), 
    `sale_mean_14_decay_1t` Nullable(Float32), 
    `sale_mean_14_1t` Nullable(Float32), 
    `sale_median_14_1t` Nullable(Float32), 
    `sale_min_14_1t` Nullable(Float32), 
    `sale_max_14_1t` Nullable(Float32), 
    `sale_std_14_1t` Nullable(Float32), 
    `sale_diff_28_mean_1t` Nullable(Float32), 
    `sale_mean_28_decay_1t` Nullable(Float32), 
    `sale_mean_28_1t` Nullable(Float32), 
    `sale_median_28_1t` Nullable(Float32), 
    `sale_min_28_1t` Nullable(Float32), 
    `sale_max_28_1t` Nullable(Float32), 
    `sale_std_28_1t` Nullable(Float32), 
    `sale_has_sales_days_in_last_3_1t` Nullable(Float32), 
    `sale_last_has_sales_day_in_last_3_1t` Nullable(Float32), 
    `sale_first_has_sales_day_in_last_3_1t` Nullable(Float32), 
    `sale_has_sales_days_in_last_7_1t` Nullable(Float32), 
    `sale_last_has_sales_day_in_last_7_1t` Nullable(Float32), 
    `sale_first_has_sales_day_in_last_7_1t` Nullable(Float32), 
    `sale_has_sales_days_in_last_14_1t` Nullable(Float32), 
    `sale_last_has_sales_day_in_last_14_1t` Nullable(Float32), 
    `sale_first_has_sales_day_in_last_14_1t` Nullable(Float32), 
    `sale_has_sales_days_in_last_28_1t` Nullable(Float32), 
    `sale_last_has_sales_day_in_last_28_1t` Nullable(Float32), 
    `sale_first_has_sales_day_in_last_28_1t` Nullable(Float32), 
    `sale_day_1` Nullable(Float32), 
    `sale_day_2` Nullable(Float32), 
    `sale_day_3` Nullable(Float32), 
    `sale_day_4` Nullable(Float32), 
    `sale_day_5` Nullable(Float32), 
    `sale_day_6` Nullable(Float32), 
    `sale_day_7` Nullable(Float32), 
    `sale_day_8` Nullable(Float32), 
    `sale_day_9` Nullable(Float32), 
    `sale_day_10` Nullable(Float32), 
    `sale_day_11` Nullable(Float32), 
    `sale_day_12` Nullable(Float32), 
    `sale_day_13` Nullable(Float32), 
    `sale_day_14` Nullable(Float32), 
    `sale_day_15` Nullable(Float32), 
    `sale_day_16` Nullable(Float32), 
    `sale_day_17` Nullable(Float32), 
    `sale_day_18` Nullable(Float32), 
    `sale_day_19` Nullable(Float32), 
    `sale_day_20` Nullable(Float32), 
    `sale_day_21` Nullable(Float32), 
    `sale_day_22` Nullable(Float32), 
    `sale_day_23` Nullable(Float32), 
    `sale_day_24` Nullable(Float32), 
    `sale_day_25` Nullable(Float32), 
    `sale_day_26` Nullable(Float32), 
    `sale_day_27` Nullable(Float32), 
    `sale_mean_4_dow0` Nullable(Float32), 
    `sale_mean_4_dow1` Nullable(Float32), 
    `sale_mean_4_dow2` Nullable(Float32), 
    `sale_mean_4_dow3` Nullable(Float32), 
    `sale_mean_4_dow4` Nullable(Float32), 
    `sale_mean_4_dow5` Nullable(Float32), 
    `sale_mean_4_dow6` Nullable(Float32), 
    `discount_mean_3_1t` Nullable(Float32), 
    `discount_median_3_1t` Nullable(Float32), 
    `discount_min_3_1t` Nullable(Float32), 
    `discount_max_3_1t` Nullable(Float32), 
    `discount_std_3_1t` Nullable(Float32), 
    `discount_mean_7_1t` Nullable(Float32), 
    `discount_median_7_1t` Nullable(Float32), 
    `discount_min_7_1t` Nullable(Float32), 
    `discount_max_7_1t` Nullable(Float32), 
    `discount_std_7_1t` Nullable(Float32), 
    `discount_mean_14_1t` Nullable(Float32), 
    `discount_median_14_1t` Nullable(Float32), 
    `discount_min_14_1t` Nullable(Float32), 
    `discount_max_14_1t` Nullable(Float32), 
    `discount_std_14_1t` Nullable(Float32), 
    `discount_mean_28_1t` Nullable(Float32), 
    `discount_median_28_1t` Nullable(Float32), 
    `discount_min_28_1t` Nullable(Float32), 
    `discount_max_28_1t` Nullable(Float32), 
    `discount_std_28_1t` Nullable(Float32), 
    `shop_num_diff_3_mean_1t` Nullable(Float32), 
    `shop_num_mean_3_1t` Nullable(Float32), 
    `shop_num_min_3_1t` Nullable(Float32), 
    `shop_num_max_3_1t` Nullable(Float32), 
    `shop_num_std_3_1t` Nullable(Float32), 
    `shop_num_diff_7_mean_1t` Nullable(Float32), 
    `shop_num_mean_7_1t` Nullable(Float32), 
    `shop_num_min_7_1t` Nullable(Float32), 
    `shop_num_max_7_1t` Nullable(Float32), 
    `shop_num_std_7_1t` Nullable(Float32), 
    `shop_num_diff_14_mean_1t` Nullable(Float32), 
    `shop_num_mean_14_1t` Nullable(Float32), 
    `shop_num_min_14_1t` Nullable(Float32), 
    `shop_num_max_14_1t` Nullable(Float32), 
    `shop_num_std_14_1t` Nullable(Float32), 
    `shop_num_diff_28_mean_1t` Nullable(Float32), 
    `shop_num_mean_28_1t` Nullable(Float32), 
    `shop_num_min_28_1t` Nullable(Float32), 
    `shop_num_max_28_1t` Nullable(Float32), 
    `shop_num_std_28_1t` Nullable(Float32), 
    `shop_num_has_sales_days_in_last_3_1t` Nullable(Float32), 
    `shop_num_last_has_sales_day_in_last_3_1t` Nullable(Float32), 
    `shop_num_first_has_sales_day_in_last_3_1t` Nullable(Float32), 
    `shop_num_has_sales_days_in_last_7_1t` Nullable(Float32), 
    `shop_num_last_has_sales_day_in_last_7_1t` Nullable(Float32), 
    `shop_num_first_has_sales_day_in_last_7_1t` Nullable(Float32), 
    `shop_num_has_sales_days_in_last_14_1t` Nullable(Float32), 
    `shop_num_last_has_sales_day_in_last_14_1t` Nullable(Float32), 
    `shop_num_first_has_sales_day_in_last_14_1t` Nullable(Float32), 
    `shop_num_has_sales_days_in_last_28_1t` Nullable(Float32), 
    `shop_num_last_has_sales_day_in_last_28_1t` Nullable(Float32), 
    `shop_num_first_has_sales_day_in_last_28_1t` Nullable(Float32), 
    `stock_qty_diff_3_mean_1t` Nullable(Float32), 
    `stock_qty_mean_3_1t` Nullable(Float32), 
    `stock_qty_min_3_1t` Nullable(Float32), 
    `stock_qty_max_3_1t` Nullable(Float32), 
    `stock_qty_std_3_1t` Nullable(Float32), 
    `stock_qty_diff_7_mean_1t` Nullable(Float32), 
    `stock_qty_mean_7_1t` Nullable(Float32), 
    `stock_qty_min_7_1t` Nullable(Float32), 
    `stock_qty_max_7_1t` Nullable(Float32), 
    `stock_qty_std_7_1t` Nullable(Float32), 
    `stock_qty_diff_14_mean_1t` Nullable(Float32), 
    `stock_qty_mean_14_1t` Nullable(Float32), 
    `stock_qty_min_14_1t` Nullable(Float32), 
    `stock_qty_max_14_1t` Nullable(Float32), 
    `stock_qty_std_14_1t` Nullable(Float32), 
    `stock_qty_diff_28_mean_1t` Nullable(Float32), 
    `stock_qty_mean_28_1t` Nullable(Float32), 
    `stock_qty_min_28_1t` Nullable(Float32), 
    `stock_qty_max_28_1t` Nullable(Float32), 
    `stock_qty_std_28_1t` Nullable(Float32), 
    `stock_qty_has_sales_days_in_last_3_1t` Nullable(Float32), 
    `stock_qty_last_has_sales_day_in_last_3_1t` Nullable(Float32), 
    `stock_qty_first_has_sales_day_in_last_3_1t` Nullable(Float32), 
    `stock_qty_has_sales_days_in_last_7_1t` Nullable(Float32), 
    `stock_qty_last_has_sales_day_in_last_7_1t` Nullable(Float32), 
    `stock_qty_first_has_sales_day_in_last_7_1t` Nullable(Float32), 
    `stock_qty_has_sales_days_in_last_14_1t` Nullable(Float32), 
    `stock_qty_last_has_sales_day_in_last_14_1t` Nullable(Float32), 
    `stock_qty_first_has_sales_day_in_last_14_1t` Nullable(Float32), 
    `stock_qty_has_sales_days_in_last_28_1t` Nullable(Float32), 
    `stock_qty_last_has_sales_day_in_last_28_1t` Nullable(Float32), 
    `stock_qty_first_has_sales_day_in_last_28_1t` Nullable(Float32), 
    `holiday_sum_3_1t` Nullable(Float32), 
    `holiday_sum_7_1t` Nullable(Float32), 
    `holiday_sum_14_1t` Nullable(Float32), 
    `holiday_sum_28_1t` Nullable(Float32), 
    `cat1` Nullable(Float32), 
    `shop_num` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY (ordered_at, sku)
SETTINGS index_granularity = 8192
