ATTACH TABLE src_products
(
    `id` Int64, 
    `sku` Nullable(String), 
    `skc` Nullable(String), 
    `spu` Nullable(String), 
    `spu_name` Nullable(String), 
    `skc_name` Nullable(String), 
    `sku_name` Nullable(String), 
    `img_url` Nullable(String), 
    `sale_channel` Nullable(String), 
    `prd_year` Nullable(Int64), 
    `prd_season` Nullable(String), 
    `demo_prd_code` Nullable(String), 
    `bus_category` Nullable(String), 
    `brand_name` Nullable(String), 
    `cat1` Nullable(String), 
    `cat2` Nullable(String), 
    `cat3` Nullable(String), 
    `cat4` Nullable(String), 
    `cat5` Nullable(String), 
    `cat6` Nullable(String), 
    `p1` Nullable(String), 
    `p2` Nullable(String), 
    `p3` Nullable(String), 
    `p4` Nullable(String), 
    `p5` Nullable(String), 
    `p6` Nullable(String), 
    `p7` Nullable(String), 
    `p8` Nullable(String), 
    `p9` Nullable(String), 
    `p10` Nullable(String), 
    `p11` Nullable(String), 
    `p12` Nullable(String), 
    `p13` Nullable(String), 
    `p14` Nullable(String), 
    `p15` Nullable(String), 
    `p16` Nullable(String), 
    `p17` Nullable(String), 
    `p18` Nullable(String), 
    `supply_cycle` Nullable(Int64), 
    `min_order_count` Nullable(Float32)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
