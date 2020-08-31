ATTACH VIEW v2_fact_dynamicprice_comman_accuracy
(
    `id` Int64, 
    `product_id` Nullable(String), 
    `market_price` Nullable(Float32), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `uvsum` Nullable(Int64), 
    `carsum` Nullable(Int64), 
    `qtysum` Nullable(Int64), 
    `amountsum` Nullable(Int64), 
    `dayssum` Nullable(Int64), 
    `car2uvmean` Nullable(Float32), 
    `q2umean` Nullable(Float32), 
    `pricemean` Nullable(Float32), 
    `uvmean` Nullable(Float32), 
    `discountmean` Nullable(Float32), 
    `q2umeanlag1` Nullable(Float32), 
    `car2uvmeanlag1` Nullable(Float32), 
    `q2umeanhead` Nullable(Float32), 
    `discounthead` Nullable(Float32), 
    `uvsumhead` Nullable(Int64), 
    `qtysumhead` Nullable(Int64), 
    `dayssumhead` Nullable(Int64), 
    `qtymeanhead` Nullable(Int64), 
    `q2umeanpred` Nullable(Float32), 
    `mae` Nullable(Float32), 
    `error` Nullable(Float32), 
    `error_max` Nullable(Float32), 
    `date_st` Nullable(Date), 
    `pred_week` Nullable(Int64), 
    `bwpz_key` Nullable(String)
) AS
SELECT 
    *, 
    concat(product_id, '_', toString(toYYYYMMDD(addDays(toMonday(addDays(date_st, pred_week * 3)), -1)))) AS bwpz_key
FROM spl_baicaowei.opt_dynamicprice_comman_accuracy
