ATTACH TABLE src_product_design_props
(
    `id` String, 
    `spu` Nullable(String), 
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
    `p19` Nullable(String), 
    `p20` Nullable(String), 
    `p21` Nullable(String), 
    `p22` Nullable(String), 
    `p23` Nullable(String), 
    `p24` Nullable(String), 
    `p25` Nullable(String), 
    `p26` Nullable(String), 
    `p27` Nullable(String), 
    `p28` Nullable(String), 
    `p29` Nullable(String), 
    `p30` Nullable(String), 
    `p31` Nullable(String), 
    `p32` Nullable(String), 
    `p33` Nullable(String), 
    `p34` Nullable(String), 
    `p35` Nullable(String), 
    `p36` Nullable(String), 
    `p37` Nullable(String), 
    `p38` Nullable(String), 
    `p39` Nullable(String), 
    `p40` Nullable(String), 
    `p41` Nullable(String), 
    `p42` Nullable(String), 
    `p43` Nullable(String), 
    `p44` Nullable(String), 
    `p45` Nullable(String), 
    `p46` Nullable(String), 
    `p47` Nullable(String), 
    `created_at` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
