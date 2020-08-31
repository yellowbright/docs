ATTACH TABLE ali_op_shop_categories
(
    `id` Int64, 
    `event_date` Nullable(Date), 
    `shop_code` Nullable(String), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat` Nullable(String), 
    `pay_amt` Nullable(Float32), 
    `visitor_count` Nullable(Int64), 
    `ws_visitor_count` Nullable(Int64), 
    `pc_visitor_count` Nullable(Int64), 
    `pc_pay_amt` Nullable(Float32), 
    `ws_pay_amt` Nullable(Float32), 
    `pay_buyer_count` Nullable(Int64), 
    `pc_pay_buyer_count` Nullable(Int64), 
    `ws_pay_buyer_count` Nullable(Int64), 
    `pay_cv_rate` Nullable(Float32), 
    `pc_pay_cv_rate` Nullable(Float32), 
    `ws_pay_cv_rate` Nullable(Float32), 
    `pay_prd_count` Nullable(Int64), 
    `pc_pay_prd_count` Nullable(Int64), 
    `ws_pay_prd_count` Nullable(Int64)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
