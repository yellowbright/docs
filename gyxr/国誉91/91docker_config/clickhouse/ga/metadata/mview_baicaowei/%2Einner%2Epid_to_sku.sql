ATTACH TABLE `.inner.pid_to_sku`
(
    `product_id` String, 
    `sku` String
)
ENGINE = StripeLog()
