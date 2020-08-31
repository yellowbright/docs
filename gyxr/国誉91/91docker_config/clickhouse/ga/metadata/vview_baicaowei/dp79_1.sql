ATTACH VIEW dp79_1
(
    `order_date` Date, 
    `province` Nullable(String), 
    `city` Nullable(String), 
    `area` Nullable(String), 
    `tt_pay_prd_qty` Float64, 
    `tt_pay_amt` Float64, 
    `avg_pay_unit_price` Float64
) AS
SELECT 
    order_date, 
    province, 
    city, 
    area, 
    sumMerge(tt_pay_prd_qty) AS tt_pay_prd_qty, 
    sumMerge(tt_pay_amt) AS tt_pay_amt, 
    round(tt_pay_amt / tt_pay_prd_qty, 2) AS avg_pay_unit_price
FROM vview_baicaowei.dp79_1_inner
GROUP BY 
    order_date, 
    province, 
    city, 
    area
