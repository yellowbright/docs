ATTACH VIEW opt_durationcontrol_spu
(
    `SPUKey` Int64, 
    `spu` String, 
    `生命周期阶段` String, 
    `开始时间` Date, 
    `结束时间` Date
) AS
SELECT 
    m.id AS SPUKey, 
    spu, 
    lable AS `生命周期阶段`, 
    toDate(begintime) AS `开始时间`, 
    toDate(endtime) AS `结束时间`
FROM eva_huigou.opt_durationcontrol_spu
ANY LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = spu
