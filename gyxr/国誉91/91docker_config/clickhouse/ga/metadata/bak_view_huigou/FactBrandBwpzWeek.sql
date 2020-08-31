ATTACH VIEW FactBrandBwpzWeek
(
    `channel_level` Nullable(String), 
    `channel_code` Nullable(String), 
    `SPUKey` UInt64, 
    `爆旺平滞结果` Nullable(String), 
    `判定爆旺平滞时间` Date, 
    `在架时长` Nullable(String)
) AS
SELECT 
    channel_level, 
    channel_code, 
    m.id AS SPUKey, 
    bwpz AS `爆旺平滞结果`, 
    judge_date AS `判定爆旺平滞时间`, 
    is_observed AS `在架时长`
FROM eva_huigou.opt_bwpz_result
ANY LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = spu
WHERE channel_level = 'all'
