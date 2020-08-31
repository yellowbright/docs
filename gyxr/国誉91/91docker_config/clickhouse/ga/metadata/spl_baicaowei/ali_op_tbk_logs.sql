ATTACH TABLE ali_op_tbk_logs
(
    `id` Int64, 
    `shop_code` Nullable(String), 
    `event_date` Nullable(Date), 
    `display_count` Nullable(Int64), 
    `click_count` Nullable(Int64), 
    `avg_commission_rate` Nullable(Float32), 
    `commission` Nullable(Float32), 
    `amt` Nullable(Float32), 
    `lead_pay_amt` Nullable(Float32), 
    `lead_order_count` Nullable(Int64), 
    `click_cv_rate` Nullable(Float32), 
    `fav_shop_visitor_count` Nullable(Int64), 
    `roi` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
