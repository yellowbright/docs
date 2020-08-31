c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan ch:resetSyncJob spl_baicaowei opt_pred_week --confirmed 1
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan ch:resetSyncJob spl_baicaowei opt_bwpz_result --confirmed 1
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan ch:resetSyncJob spl_baicaowei opt_dynamicprice_active --confirmed 1
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan ch:resetSyncJob spl_baicaowei opt_dynamicprice_active_accuracy --confirmed 1
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan ch:resetSyncJob spl_baicaowei opt_dynamicprice_comman --confirmed 1
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan ch:resetSyncJob spl_baicaowei opt_dynamicprice_comman_accuracy --confirmed 1
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan ch:resetSyncJob spl_baicaowei opt_life_cycle_result --confirmed 1
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan ch:resetSyncJob spl_baicaowei opt_profit_model_result --confirmed 1

c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan transfer:run --rows 10000

c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_pred_week
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_dim_bwpz
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_dim_prd
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_dim_sku
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_profit_model_result
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_dynamicprice_active
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_dynamicprice_active_accuracy
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_dynamicprice_comman
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_dynamicprice_comman_accuracy
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_life_cyle_result
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_period_basedata_plus
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_prd_stock_logs
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d v2_fact_sku_stock_logs
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d dp79_1
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d dp79_2
c:\wamp64\bin\php\php7.2.18\php.exe D:\spl_scripts\artisan pbi:feeder-d dp79_stock



timeout /T 120 /NOBREAK