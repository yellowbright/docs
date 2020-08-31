#!/bin/bash

db=$1
table=$2
partition=$3

IFS=',' read -r -a tables <<< "$2"

for t in ${tables[*]}
do
	echo "DB $db table $t parition $partition"
	clickhouse-client --port 9000 -u admin --password 1qaz2wsx --query="ALTER TABLE $db.$t DROP PARTITION $partition"
	clickhouse-client --port 9000 -u admin --password 1qaz2wsx --query="ALTER TABLE $db.$t ATTACH PARTITION $partition" 
done
