#!/bin/bash
if [ ! -n "$1" ];then
	delta=-1
else
	delta=$1
fi

the_date=`date +"%Y%m%d" -d "$delta days"`
echo $the_date

docker exec -i php72_spl_1 php /spl_scripts/artisan pbi:mv huigou --only opt_yuce,opt_yuce_error

./exportPartition.py opt_yuce toYYYYMMDD\(\\\`预测开始日期\\\`\) $the_date
./exportDefault.py opt_yuce_error 
