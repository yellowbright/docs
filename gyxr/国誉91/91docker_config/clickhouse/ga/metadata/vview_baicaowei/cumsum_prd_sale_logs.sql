ATTACH MATERIALIZED VIEW cumsum_prd_sale_logs
(
    `order_date` Date, 
    `dt_order_date` DateTime, 
    `product_id` String, 
    `qty` Int32, 
    `cs_qty` Int32, 
    `amt` Float32, 
    `cs_amt` Float32
)
ENGINE = MergeTree()
ORDER BY order_date
SETTINGS index_granularity = 8192 AS
SELECT 
    order_date, 
    toDateTime(order_date) AS dt_order_date, 
    product_id, 
    qty, 
    cs_qty, 
    amt, 
    cs_amt
FROM 
(
    SELECT 
        product_id, 
        arr_order_date, 
        arr_qty, 
        arr_amt, 
        arrayCumSum(arr_qty) AS cumsum_qty, 
        arrayCumSum(arr_amt) AS cumsum_amt
    FROM 
    (
        SELECT 
            product_id, 
            groupArray(order_date) AS arr_order_date, 
            groupArray(qty) AS arr_qty, 
            groupArray(amt) AS arr_amt
        FROM 
        (
            SELECT 
                product_id, 
                toDate(ordered_at) AS order_date, 
                sum(pay_prd_qty) AS qty, 
                sum(pay_amt) AS amt
            FROM spl_baicaowei.src_order_logs
            WHERE trimBoth(product_id) != ''
            GROUP BY 
                product_id, 
                order_date
            ORDER BY order_date ASC
        )
        GROUP BY product_id
    )
)
ARRAY JOIN 
    arr_qty AS qty, 
    arr_amt AS amt, 
    arr_order_date AS order_date, 
    cumsum_qty AS cs_qty, 
    cumsum_amt AS cs_amt
