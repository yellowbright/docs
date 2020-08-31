ATTACH VIEW src_shop_targets
(
    `SHOPKey` UInt64, 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `销售额` Nullable(Float32), 
    `日期` Nullable(Date), 
    `DateKey` Nullable(UInt32)
) AS
SELECT 
    m.id AS SHOPKey, 
    p.cat1 AS cat1, 
    target_to AS cat2, 
    target_value AS `销售额`, 
    start_date AS `日期`, 
    toYYYYMMDD(start_date) AS DateKey
FROM spl_huigou.src_shop_targets
ANY LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = shop_code
ANY LEFT JOIN spl_huigou.src_products AS p ON p.cat2 = target_to
