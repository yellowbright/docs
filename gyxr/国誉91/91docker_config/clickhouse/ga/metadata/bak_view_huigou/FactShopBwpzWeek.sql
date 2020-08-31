ATTACH MATERIALIZED VIEW FactShopBwpzWeek
(
    `channel_level` Nullable(String), 
    `channel_code` Nullable(String), 
    `SPUKey` UInt64, 
    `爆旺平滞结果` Nullable(String), 
    `判定爆旺平滞时间` Date, 
    `在架时长` Nullable(String), 
    `品牌BWPZ` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY `判定爆旺平滞时间`
SETTINGS index_granularity = 8192 AS
SELECT 
    channel_level, 
    channel_code, 
    m.id AS SPUKey, 
    bwpz AS `爆旺平滞结果`, 
    judge_date AS `判定爆旺平滞时间`, 
    is_observed AS `在架时长`, 
    r.bwpz AS `品牌BWPZ`
FROM eva_huigou.opt_bwpz_result AS a
ANY LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = a.spu
ANY LEFT JOIN eva_huigou.opt_bwpz_result AS r ON (r.spu = a.spu) AND (r.judge_date = a.judge_date) AND (r.channel_level = 'all')
WHERE channel_level = 'channel4'
