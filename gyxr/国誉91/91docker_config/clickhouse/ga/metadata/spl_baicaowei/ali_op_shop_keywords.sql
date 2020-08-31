ATTACH TABLE ali_op_shop_keywords
(
    `id` Int64, 
    `event_date` Nullable(Date), 
    `shop_code` Nullable(String), 
    `ending_type` Nullable(String), 
    `keywords` Nullable(String), 
    `jump_out_rate` Nullable(Float32), 
    `lead_pay_amt` Nullable(Float32), 
    `lead_order_buyer_count` Nullable(Int64), 
    `lead_visitor_count` Nullable(Int64), 
    `order_cv_rate` Nullable(Float32), 
    `lead_pay_prd_count` Nullable(Int64), 
    `lead_pv_count` Nullable(Int64)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
