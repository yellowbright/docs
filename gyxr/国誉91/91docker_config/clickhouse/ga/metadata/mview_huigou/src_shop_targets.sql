ATTACH TABLE src_shop_targets
(
    `SHOPKey` UInt64, 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `销售额` Nullable(Float32), 
    `日期` Nullable(Date), 
    `DateKey` Nullable(UInt32)
)
ENGINE = StripeLog
