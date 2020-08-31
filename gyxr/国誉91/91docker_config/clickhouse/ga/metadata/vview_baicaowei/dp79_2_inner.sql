ATTACH MATERIALIZED VIEW dp79_2_inner
(
    `order_date` Date, 
    `shop_code` Nullable(String), 
    `sku` Nullable(String), 
    `tt_pay_prd_qty` AggregateFunction(sum, Float32), 
    `tt_pay_amt` AggregateFunction(sum, Float32)
)
ENGINE = AggregatingMergeTree()
PARTITION BY toYYYYMM(order_date)
ORDER BY order_date
SETTINGS index_granularity = 8192 AS
SELECT 
    toDate(ordered_at) AS order_date, 
    shop_code, 
    sku, 
    sumState(pay_prd_qty) AS tt_pay_prd_qty, 
    sumState(pay_amt) AS tt_pay_amt
FROM spl_baicaowei.src_order_logs
GROUP BY 
    order_date, 
    shop_code, 
    sku
