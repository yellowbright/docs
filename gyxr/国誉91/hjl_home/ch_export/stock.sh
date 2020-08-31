#!/bin/bash

for i in {1..2}
do
	i_date=$(date +"%Y%m%d" -d "-$i days")
	echo ${i_date} 
	#./exportPartition.py FactStockLogs toYYYYMMDD\(store_date\) ${i_date}
done

