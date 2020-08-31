#!/bin/bash

if [ ! -n "$1" ];then
	delta=-1
else
	delta=$1
fi

the_date=`date +"%Y%m%d" -d "$delta days"`
echo $the_date

#reload mview
docker exec -i php72_spl_1 php /spl_scripts/artisan pbi:mv huigou --only opt_xiaokong_priceadjust_result_org,opt_xiaokong_priceadjust_result_error

./exportDefault.py opt_xiaokong_priceadjust_result_org
./exportDefault.py opt_xiaokong_priceadjust_result_error

