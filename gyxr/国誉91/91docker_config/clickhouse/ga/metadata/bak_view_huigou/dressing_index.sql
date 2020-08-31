ATTACH VIEW dressing_index
(
    `DateKey` Nullable(UInt32), 
    `日期` Nullable(Date), 
    `城市编码` Nullable(String), 
    `城市名称` Nullable(String), 
    `最高温` Nullable(String), 
    `最低温` Nullable(String), 
    `平均温` Nullable(String), 
    `穿衣指数` Nullable(String)
) AS
SELECT 
    toYYYYMMDD(solar_date) AS DateKey, 
    toDate(solar_date) AS `日期`, 
    city_num AS `城市编码`, 
    city AS `城市名称`, 
    max_temperature AS `最高温`, 
    min_temperature AS `最低温`, 
    avg_temperature AS `平均温`, 
    dressing_index AS `穿衣指数`
FROM eva_huigou.dressing_index
