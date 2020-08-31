ATTACH VIEW FactCompSaleLogs
(
    `id` UInt64, 
    `ItemKey` UInt64, 
    `DateKey` UInt64, 
    `newsale_date` Nullable(String), 
    `soldnum_d` Nullable(Int64), 
    `soldnum_m` Nullable(Int64), 
    `soldnum` Nullable(Int64), 
    `price` Nullable(Float32), 
    `old_price` Nullable(Float32), 
    `price_name` Nullable(String), 
    `stock` Nullable(Int64), 
    `favcount` Nullable(Int64), 
    `onsale` Nullable(Int8), 
    `shop_id` Nullable(Int64)
) AS
SELECT 
    id, 
    item_id AS ItemKey, 
    toYYYYMMDD(date) AS DateKey, 
    newsale_date, 
    soldnum_d, 
    soldnum_m, 
    soldnum, 
    price, 
    old_price, 
    price_name, 
    stock, 
    favcount, 
    onsale, 
    shop_id
FROM db_public.`58tu_shop_goods_logs`
WHERE shop_id IN (1672, 1725)
