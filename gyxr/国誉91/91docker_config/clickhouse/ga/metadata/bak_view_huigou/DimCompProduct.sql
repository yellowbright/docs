ATTACH VIEW DimCompProduct
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
) AS
SELECT DISTINCT 
    item_id AS ItemKey, 
    x.item_title AS item_title, 
    x.category_1_id AS category_1_id, 
    x.category_1_name AS `类目1`, 
    x.category_2_id AS category_2_id, 
    x.category_2_name AS `类目2`, 
    x.category_id AS category_id, 
    x.category_name AS category_name, 
    x.link AS link, 
    concat('http:', x.image) AS `图片`, 
    multiIf(x.shop_id = 1672, '韩都衣舍', x.shop_id = 1725, '乐町', NULL) AS `品牌`
FROM db_public.`58tu_shop_goods_logs` AS a
ANY LEFT JOIN db_public.`58tu_shop_goods_logs` AS x ON x.item_id = a.item_id
WHERE shop_id IN (1672, 1725)
