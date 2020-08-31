ATTACH VIEW test_profit_model
(
    `spu` Nullable(String), 
    `tag_price` Nullable(Float32), 
    `avg_unit_cost` Nullable(Float64), 
    `profit_rate` Nullable(Float64), 
    `profit_model` Nullable(String)
) AS
SELECT 
    spu, 
    tag_price, 
    round(avg_unit_cost, 2) AS avg_unit_cost, 
    round((tag_price - avg_unit_cost) / tag_price, 3) AS profit_rate, 
    multiIf((profit_rate > 0.5) AND (profit_rate <= 0.6), '利润款', (profit_rate > 0.459) AND (profit_rate <= 0.5), '英雄款', (profit_rate > 0.428) AND (profit_rate <= 0.459), '战斗款', (profit_rate >= 0.333) AND (profit_rate <= 0.428), '引流款', profit_rate > 0.6, '异常品规划毛利率大于60%', profit_rate < 0.333, '异常品规划毛利率小于33.3%', NULL) AS profit_model
FROM 
(
    SELECT 
        sum(unit_cost * order_prd_qty) / sum(order_prd_qty) AS avg_unit_cost, 
        spu
    FROM spl_huigou.src_supplier_order_logs
    ANY LEFT JOIN spl_huigou.src_products USING (sku)
    GROUP BY spu
) AS t1
ANY LEFT JOIN 
(
    SELECT DISTINCT 
        spu, 
        s.tag_price
    FROM spl_huigou.src_products
    ANY LEFT JOIN spl_huigou.src_product_sale_seasons AS s USING (sku)
) AS t2 USING (spu)
