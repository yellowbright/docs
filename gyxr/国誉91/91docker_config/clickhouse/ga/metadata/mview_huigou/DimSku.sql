ATTACH TABLE DimSku
(
    `id` UInt64, 
    `SKUKey` UInt64, 
    `sku` Nullable(String), 
    `skc` Nullable(String), 
    `spu` Nullable(String), 
    `颜色` Nullable(String), 
    `尺码` Nullable(String), 
    `单件成本` Nullable(Float64)
)
ENGINE = StripeLog
