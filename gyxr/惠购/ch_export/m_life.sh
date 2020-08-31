#!/bin/bash

#reload mv
docker exec -i php72_spl_1 php /spl_scripts/artisan pbi:mv huigou --only opt_dongtaidingjia_org,opt_durationcontrol_cat_org,opt_durationcontrol_cat_intermediate,opt_durationcontrol_products_temperature_org,opt_durationcontrol_season_org,opt_durationcontrol_spu_org,opt_durationcontrol_spu_intermediate,opt_durationcontrol_error

# engine output 
./exportDefault.py opt_dongtaidingjia_org
./exportDefault.py opt_durationcontrol_cat_org
./exportDefault.py opt_durationcontrol_cat_intermediate
./exportDefault.py opt_durationcontrol_products_temperature_org
./exportDefault.py opt_durationcontrol_season_org
./exportDefault.py opt_durationcontrol_spu_org
./exportDefault.py opt_durationcontrol_spu_intermediate

# error log
./exportDefault.py opt_durationcontrol_error 

