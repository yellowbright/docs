ATTACH VIEW FactProfitModel
(
    `id` UInt64, 
    `SPUKey` UInt64, 
    `proModel` Float32, 
    `profit_model` String, 
    `目标毛利率Max` Float32, 
    `目标毛利率Min` Float32
) AS
SELECT 
    m.id AS id, 
    m.id AS SPUKey, 
    proModel, 
    profit_model, 
    profit_max AS `目标毛利率Max`, 
    profit_min AS `目标毛利率Min`
FROM eva_huigou.hgProfitEnd
ANY LEFT JOIN spl_huigou.mapping_keys AS m ON m.code = spu
