#!/bin/bash

db=$1

tables=$(ls /var/lib/clickhouse/ga/metadata/$db)

echo 'Database' $db

for table in $tables
do
	t="${table%.*}"
	echo "Re-ttach table "$t 
	clickhouse-client --port 9009 -u admin --password _1qaz2wsx --query="detach table IF EXISTS "$db"."$t
	clickhouse-client --port 9009 -u admin --password _1qaz2wsx --query="attach table IF NOT EXISTS "$db"."$t
done
