ATTACH TABLE `.inner.sku_props`
(
    `sku` String, 
    `cat1` String, 
    `cat2` String, 
    `cat3` String, 
    `cost` Float32
)
ENGINE = StripeLog()
