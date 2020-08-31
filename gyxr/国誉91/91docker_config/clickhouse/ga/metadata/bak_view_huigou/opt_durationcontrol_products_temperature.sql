ATTACH VIEW opt_durationcontrol_products_temperature
(
    `城市编码` Nullable(String), 
    `城市名称` Nullable(String), 
    `省份` Nullable(String), 
    `DateKey` Nullable(UInt32), 
    `阳历日期` Nullable(Date), 
    `周数` Nullable(Float32), 
    `平均温` Nullable(String), 
    `季节` Nullable(String), 
    `自然年` Nullable(String)
) AS
SELECT 
    city_num AS `城市编码`, 
    city AS `城市名称`, 
    province AS `省份`, 
    toYYYYMMDD(solar_date) AS DateKey, 
    toDate(solar_date) AS `阳历日期`, 
    week AS `周数`, 
    avg_temperature AS `平均温`, 
    season AS `季节`, 
    year AS `自然年`
FROM eva_huigou.opt_durationcontrol_products_temperature
