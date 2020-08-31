ATTACH TABLE opt_inventoryCon_shopreplenishment
(
    `id` Int64, 
    `rep_date` Nullable(DateTime), 
    `shop_code` Nullable(String), 
    `spu` Nullable(String), 
    `skc` Nullable(String), 
    `sku` Nullable(String), 
    `profit_model` Nullable(String), 
    `bwpz` Nullable(String), 
    `grade` Nullable(String), 
    `sale_year` Nullable(String), 
    `sale_season` Nullable(String), 
    `remain_days` Nullable(UInt32), 
    `yn_replenishment` Nullable(String), 
    `replenishment_type` Nullable(String), 
    `shop_wareqty` Nullable(UInt32), 
    `pre_need` Nullable(UInt32), 
    `pre_number_short` Nullable(UInt32), 
    `base_qty` Nullable(UInt32), 
    `pre_replenishment_qty` Nullable(UInt32), 
    `yn_replenishment_qty` Nullable(String), 
    `center_warehouse` Nullable(UInt32), 
    `replenishment_qty` Nullable(UInt32), 
    `created_at` Nullable(DateTime)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
