ATTACH VIEW sku_cumsum_daily_sale_logs
(
    `ord_date` Date, 
    `sku` Nullable(String), 
    `finalizeAggregation(qty)` Float64, 
    `runningAccumulate(qty)` Float64
) AS
SELECT 
    ord_date, 
    sku, 
    finalizeAggregation(qty), 
    runningAccumulate(qty)
FROM 
(
    SELECT 
        toDate(ordered_at) AS ord_date, 
        sku, 
        sumState(pay_prd_qty) AS qty
    FROM spl_baicaowei.src_order_logs
    GROUP BY 
        ord_date, 
        sku
    ORDER BY ord_date ASC
)
