#!/bin/bash
./exportDefault.py mapping_keys
./exportDefault.py dressing_index 
./exportDefault.py table_max_dates

./exportDefault.py src_weather_history
./exportDefault.py DimCompProduct

# engine output 
./exportDefault.py opt_dongtaidingjia_org
./exportDefault.py opt_durationcontrol_cat_org
./exportDefault.py opt_durationcontrol_cat_intermediate
./exportDefault.py opt_durationcontrol_products_temperature_org
./exportDefault.py opt_durationcontrol_season_org
./exportDefault.py opt_durationcontrol_spu_org
./exportDefault.py opt_durationcontrol_spu_intermediate
./exportDefault.py opt_xiaokong_priceadjust_result_org
./exportDefault.py opt_profit_model_result_org
#./exportDefault.py opt_bwpz_result_org
#./exportDefault.py opt_yuce

# error log
./exportDefault.py opt_bwpz_error
./exportDefault.py opt_durationcontrol_error 
./exportDefault.py opt_profit_model_result_error 
./exportDefault.py opt_yuce_error
./exportDefault.py opt_xiaokong_priceadjust_result_error
