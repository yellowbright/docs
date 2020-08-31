ATTACH MATERIALIZED VIEW bwpz
(
    `order_date` Date, 
    `ordered_at` DateTime, 
    `qty` Nullable(Int64), 
    `unit_price` Nullable(Float32), 
    `shop_code` String, 
    `amt` Nullable(Float32), 
    `sku_code` String, 
    `spu_code` Nullable(String), 
    `bwpz` Nullable(String), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat3` Nullable(String), 
    `cat4` Nullable(String), 
    `cat5` Nullable(String), 
    `shop_name` Nullable(String)
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(order_date)
ORDER BY order_date
SETTINGS index_granularity = 8192 AS
SELECT 
    toDate(o.ordered_at) AS order_date, 
    o.ordered_at AS ordered_at, 
    o.pay_prd_qty AS qty, 
    o.pay_unit_price AS unit_price, 
    o.shop_code AS shop_code, 
    o.pay_amt AS amt, 
    o.sku AS sku_code, 
    p.spu AS spu_code, 
    b.bwpz AS bwpz, 
    p1.category_name AS cat1, 
    p2.category_name AS cat2, 
    p3.category_name AS cat3, 
    p4.category_name AS cat4, 
    p5.category_name AS cat5, 
    shop.name AS shop_name
FROM spl_huigou.src_order_logs AS o
ANY LEFT JOIN spl_huigou.src_products AS p ON p.sku = o.sku
ANY LEFT JOIN eva_huigou.opt_bwpz_result AS b ON (b.spu = p.spu) AND (toDate(o.ordered_at) = toDate(b.judge_date))
ANY LEFT JOIN spl_huigou.src_product_levels AS p1 ON p1.category_code = p.cat1
ANY LEFT JOIN spl_huigou.src_product_levels AS p2 ON p2.category_code = p.cat2
ANY LEFT JOIN spl_huigou.src_product_levels AS p3 ON p3.category_code = p.cat3
ANY LEFT JOIN spl_huigou.src_product_levels AS p4 ON p4.category_code = p.cat4
ANY LEFT JOIN spl_huigou.src_product_levels AS p5 ON p5.category_code = p.cat5
ANY LEFT JOIN spl_huigou.src_shops AS shop ON shop.code = o.shop_code
