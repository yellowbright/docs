#!/bin/bash
docker exec -i php72_spl_1 php /spl_scripts/artisan pbi:mv huigou --only mapping_keys,dressing_index,table_max_dates,src_weather_history,DimCompProduct

./exportDefault.py mapping_keys
./exportDefault.py dressing_index 
./exportDefault.py table_max_dates

./exportDefault.py src_weather_history
./exportDefault.py DimCompProduct

