ATTACH MATERIALIZED VIEW spu_sale_logs
(
    `order_date` Date, 
    `shop_name` Nullable(String), 
    `spu` Nullable(String), 
    `qty` Nullable(Int64), 
    `amt` Nullable(Float64)
)
ENGINE = MergeTree()
ORDER BY order_date
SETTINGS index_granularity = 8192 AS
SELECT 
    toDate(ordered_at) AS order_date, 
    sp.name AS shop_name, 
    p.spu AS spu, 
    sum(pay_prd_qty) AS qty, 
    sum(pay_amt) AS amt
FROM spl_huigou.src_order_logs AS o
ANY LEFT JOIN spl_huigou.src_products AS p ON p.sku = o.sku
ANY LEFT JOIN spl_huigou.src_shops AS sp ON sp.code = shop_code
GROUP BY 
    order_date, 
    shop_name, 
    spu
