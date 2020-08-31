#!/bin/bash

db=$1

tables=$(ls /var/lib/clickhouse/metadata/$db)

echo 'Database' $db

for table in $tables
do
	t="${table%.*}"
	echo "Re-ttach table "$t 
	clickhouse-client --port 9000 --query="detach table IF EXISTS $db"."\`$t\`"
	clickhouse-client --port 9000 --query="attach table IF NOT EXISTS $db"."\`$t\`"
done
