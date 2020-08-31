ATTACH TABLE FactProfitModel
(
    `id` UInt64, 
    `SPUKey` Int64, 
    `proModel` Float32, 
    `profit_model` String, 
    `目标毛利率Max` Float32, 
    `目标毛利率Min` Float32
)
ENGINE = StripeLog
