ATTACH VIEW table_max_dates
(
    `table_name` String, 
    `max_date` Nullable(DateTime)
) AS
SELECT 
    'src_order_logs' AS table_name, 
    max(ordered_at) AS max_date
FROM spl_huigou.src_order_logs
UNION ALL
SELECT 
    'src_order_return_logs' AS table_name, 
    max(returned_at) AS max_date
FROM spl_huigou.src_order_return_logs
UNION ALL
SELECT 
    'src_supplier_order_logs' AS table_name, 
    max(order_date) AS max_date
FROM spl_huigou.src_supplier_order_logs
UNION ALL
SELECT 
    'src_warehouse_send_logs' AS table_name, 
    max(send_date) AS max_date
FROM spl_huigou.src_warehouse_send_logs
UNION ALL
SELECT 
    'src_warehouse_receive_logs' AS table_name, 
    max(in_date) AS max_date
FROM spl_huigou.src_warehouse_receive_logs
UNION ALL
SELECT 
    'src_warehouse_status_logs' AS table_name, 
    max(store_date) AS max_date
FROM spl_huigou.src_warehouse_status_logs
UNION ALL
SELECT 
    'opt_xiaokong_priceadjust_result' AS table_name, 
    max(date) AS max_date
FROM eva_huigou.opt_xiaokong_priceadjust_result
UNION ALL
SELECT 
    'opt_yuce' AS table_name, 
    max(start_date) AS max_date
FROM eva_huigou.opt_yuce
UNION ALL
SELECT 
    'opt_bwpz_result' AS table_name, 
    max(judge_date) AS max_date
FROM eva_huigou.opt_bwpz_result
UNION ALL
SELECT 
    'opt_dongtaidingjia' AS table_name, 
    max(start_date) AS max_date
FROM eva_huigou.opt_dongtaidingjia
UNION ALL
SELECT 
    'dressing_index' AS table_name, 
    max(solar_date) AS max_date
FROM eva_huigou.dressing_index
UNION ALL
SELECT 
    'opt_durationcontrol_products_temperature' AS table_name, 
    max(solar_date) AS max_date
FROM eva_huigou.opt_durationcontrol_products_temperature
UNION ALL
SELECT 
    'opt_durationcontrol_season_intermediate' AS table_name, 
    max(ordered_at) AS max_date
FROM eva_huigou.opt_durationcontrol_season_intermediate
UNION ALL
SELECT 
    'opt_durationcontrol_cat_intermediate' AS table_name, 
    max(modordered_at) AS max_date
FROM eva_huigou.opt_durationcontrol_cat_intermediate
UNION ALL
SELECT 
    'opt_durationcontrol_spu_intermediate' AS table_name, 
    max(modordered_at) AS max_date
FROM eva_huigou.opt_durationcontrol_spu_intermediate
