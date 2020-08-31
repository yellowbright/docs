ATTACH VIEW v2_fact_dynamicprice_active_accuracy
(
    `id` Int64, 
    `product_id` Nullable(String), 
    `date_st` Nullable(Date), 
    `date_ed` Nullable(Date), 
    `market_price` Nullable(Float32), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `qty2uvmax` Nullable(Float32), 
    `active_sum` Nullable(Int64), 
    `uvmeanpre` Nullable(Float32), 
    `car2uvpre` Nullable(Float32), 
    `qty2uvpre` Nullable(Float32), 
    `qty2uvlagy1` Nullable(Float32), 
    `days` Nullable(Int64), 
    `discount` Nullable(Float32), 
    `activelevel` Nullable(Int64), 
    `spu_num` Nullable(Int64), 
    `active_sell_num` Nullable(Int64), 
    `q2umeanhead` Nullable(Float32), 
    `q2umeanpred` Nullable(Float32), 
    `mae` Nullable(Float32), 
    `error` Nullable(Float32), 
    `error_max` Nullable(Float32), 
    `bwpz_key` Nullable(String)
) AS
SELECT 
    *, 
    concat(product_id, '_', toString(toYYYYMMDD(addDays(toMonday(addDays(date_st, days)), -1)))) AS bwpz_key
FROM spl_baicaowei.opt_dynamicprice_active_accuracy
