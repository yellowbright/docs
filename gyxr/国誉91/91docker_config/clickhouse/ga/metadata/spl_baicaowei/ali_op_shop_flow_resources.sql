ATTACH TABLE ali_op_shop_flow_resources
(
    `id` Int64, 
    `event_date` Nullable(Date), 
    `shop_code` Nullable(String), 
    `ending_type` Nullable(String), 
    `flow_source` Nullable(String), 
    `source_detail` Nullable(String), 
    `ws_visitor_count` Nullable(Int64), 
    `pc_pay_buyer_count` Nullable(Int64), 
    `ws_pay_buyer_count` Nullable(Int64), 
    `ws_pay_amt` Nullable(Float32), 
    `pc_order_buyer_count` Nullable(Int64), 
    `ws_order_buyer_count` Nullable(Int64), 
    `pc_order_amt` Nullable(Float32), 
    `ws_order_amt` Nullable(Float32), 
    `pc_pay_amt` Nullable(Float32), 
    `pc_visitor_count` Nullable(Int64), 
    `pc_order_cv_rate` Nullable(Float32), 
    `ws_order_cv_rate` Nullable(Float32), 
    `pc_pay_cv_rate` Nullable(Float32), 
    `ws_pay_cv_rate` Nullable(Float32), 
    `pc_per_customer_order_amt` Nullable(Float32), 
    `ws_per_customer_order_amt` Nullable(Float32), 
    `pc_uv_value` Nullable(Float32), 
    `ws_uv_value` Nullable(Float32), 
    `visitor_count` Nullable(Int64), 
    `pay_buyer_count` Nullable(Int64), 
    `pay_amt` Nullable(Float32), 
    `order_buyer_count` Nullable(Int64), 
    `order_amt` Nullable(Float32), 
    `order_cv_rate` Nullable(Float32), 
    `pay_cv_rate` Nullable(Float32), 
    `per_customer_order_amt` Nullable(Float32), 
    `uv_value` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
