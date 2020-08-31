ATTACH VIEW opt_durationcontrol_season
(
    `id` UInt64, 
    `产品年季` String, 
    `生命周期阶段` String, 
    `开始时间` Date, 
    `结束时间` Date
) AS
SELECT 
    id, 
    concat(sale_year, sale_season) AS `产品年季`, 
    lable AS `生命周期阶段`, 
    toDate(begintime) AS `开始时间`, 
    toDate(endtime) AS `结束时间`
FROM eva_huigou.opt_durationcontrol_season
