ATTACH TABLE DimCompProduct
(
    `ItemKey` UInt64, 
    `item_title` Nullable(String), 
    `category_1_id` Nullable(UInt64), 
    `类目1` Nullable(String), 
    `category_2_id` Nullable(UInt64), 
    `类目2` Nullable(String), 
    `category_id` Nullable(UInt64), 
    `category_name` Nullable(String), 
    `link` Nullable(String), 
    `图片` Nullable(String), 
    `品牌` Nullable(String)
)
ENGINE = StripeLog
