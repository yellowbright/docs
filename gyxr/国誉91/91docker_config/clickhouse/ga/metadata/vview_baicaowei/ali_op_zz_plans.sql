ATTACH VIEW ali_op_zz_plans
(
    `id` Int64, 
    `shop_code` Nullable(String), 
    `event_date` Nullable(Date), 
    `display_count` Nullable(Int64), 
    `click_count` Nullable(Int64), 
    `click_rate` Nullable(Float32), 
    `cost` Nullable(Float32), 
    `ppc` Nullable(Float32), 
    `order_amt` Nullable(Float32), 
    `order_count` Nullable(Int64), 
    `add_cart_count` Nullable(Int64), 
    `fav_prd_count` Nullable(Int64), 
    `roi` Nullable(Float32)
) AS
SELECT *
FROM spl_baicaowei.ali_op_zz_plans
