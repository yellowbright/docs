#!/bin/bash

if [ ! -n "$1" ];then
	delta=-1
else
	delta=$1
fi

the_date=`date +"%Y%m%d" -d "$delta days"`
echo $the_date

./exportPartition.py opt_yuce toYYYYMMDD\(\\\`预测开始日期\\\`\) $the_date 
./exportPartition.py opt_bwpz_result_org toYYYYMMDD\(\\\`judge_date\\\`\) $the_date 
