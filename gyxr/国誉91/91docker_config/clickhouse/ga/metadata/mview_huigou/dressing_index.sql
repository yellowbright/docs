ATTACH TABLE dressing_index
(
    `DateKey` Nullable(UInt32), 
    `日期` Nullable(Date), 
    `城市编码` Nullable(String), 
    `城市名称` Nullable(String), 
    `最高温` Nullable(String), 
    `最低温` Nullable(String), 
    `平均温` Nullable(String), 
    `穿衣指数` Nullable(String)
)
ENGINE = StripeLog
