#!/bin/bash

db=$1

clickhouse-client --port 9009 -u admin --password _1qaz2wsx --query="detach database IF EXISTS "$db
clickhouse-client --port 9009 -u admin --password _1qaz2wsx --query="attach database IF NOT EXISTS "$db

echo '' 
echo 'Database' $db 'is up!'
