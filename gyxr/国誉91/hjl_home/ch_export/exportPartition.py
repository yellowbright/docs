#!/usr/bin/python
import os
import sys

db='mview_huigou'
ch='clickhouse-client -udefault --port 9000 '
date = '2020-03-22'
storage_path = '/mnt/data_exchange/mview/'

# default
def process_default(table, dateColumn, date_str):
	cmd_mkdir='mkdir -p ' + storage_path + table
	os.system(cmd_mkdir)

	#return 100
	dt = db+'.\`'+ table  +'\`'

	file_name = storage_path + table + '.tsv.tmpx'
	cmd = ch + ' --query="select * from '+ dt +' where '+ dateColumn  + '='  + date_str  +  '  FORMAT TSV"'+ "| sed -e 's/\\\\N//g' -e 's/0000-00-00/1970-01-01/g' -e 's/nan//g' "  + ' > ' + file_name 
	cmd_iconv = 'iconv -f utf-8 -t gb18030 ' + file_name + '| tail -n +1 '  + ' > ' + storage_path + '/' +  table +'.gbk'	
	cmd_mv = 'mv  ' + storage_path + '/' +  table +'.gbk ' + storage_path + '/' +  table + '/' + date_str + '.tsv' 

	os.system(cmd)
	os.system(cmd_iconv)	
	os.system(cmd_mv)
        print cmd
	print 'process table', table
	print 'done table', table


table=sys.argv[1]
dateColumn=sys.argv[2]
year_month=sys.argv[3]
process_default(table,dateColumn,year_month)
