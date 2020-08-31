ATTACH MATERIALIZED VIEW dp79_1
(
    `order_date` Date, 
    `province` Nullable(String), 
    `city` Nullable(String), 
    `area` Nullable(String), 
    `tt_pay_prd_qty` Nullable(Float64), 
    `tt_pay_amt` Nullable(Float64), 
    `avg_pay_unit_price` Nullable(Float64)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(order_date)
ORDER BY order_date
SETTINGS index_granularity = 8192 AS
SELECT 
    toDate(ordered_at) AS order_date, 
    province, 
    city, 
    area, 
    sum(pay_prd_qty) AS tt_pay_prd_qty, 
    sum(pay_amt) AS tt_pay_amt, 
    tt_pay_amt / tt_pay_prd_qty AS avg_pay_unit_price
FROM spl_baicaowei.src_order_logs
WHERE area NOT LIKE '%,%'
GROUP BY 
    order_date, 
    province, 
    city, 
    area
