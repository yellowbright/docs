ATTACH TABLE opt_durationcontrol_products_temperature
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
)
ENGINE = StripeLog
