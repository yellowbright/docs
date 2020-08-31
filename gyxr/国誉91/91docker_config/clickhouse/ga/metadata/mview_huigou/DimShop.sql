ATTACH TABLE DimShop
(
    `SHOPKey` UInt64, 
    `shop_code` String, 
    `店铺` String, 
    `warehouse_code` Nullable(String), 
    `渠道品牌` Nullable(String), 
    `商圈类型` Nullable(String), 
    `店铺面积` Nullable(String), 
    `loc1` Nullable(String), 
    `loc2` Nullable(String), 
    `loc3` Nullable(String), 
    `loc4` Nullable(String), 
    `admin1` Nullable(String), 
    `admin2` Nullable(String), 
    `admin3` Nullable(String), 
    `admin4` Nullable(String), 
    `县区` Nullable(String), 
    `城市` Nullable(String), 
    `省份` Nullable(String), 
    `地区` Nullable(String), 
    `店长` Nullable(String), 
    `督导` Nullable(String), 
    `运营经理` Nullable(String), 
    `总经理` Nullable(String)
)
ENGINE = StripeLog
