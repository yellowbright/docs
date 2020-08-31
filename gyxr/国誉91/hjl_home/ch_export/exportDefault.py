#!/usr/bin/python
import os
import sys

db='vview_baicaowei'
ch='clickhouse-client -udefault --port 9009 '
date = '2020-03-22'
storage_path = '/mnt/sqlsrv68/mview/'

# default
def process_default(table):
	print 'process table', table

	dt = db+'.\`'+ table  +'\`'
	file_name = storage_path + table + '.tsv1.tmp'
	cmd = ch + ' --query="select * from '+ dt +' FORMAT TSV"'+ "| sed -e 's/\\\\N//g' -e 's/0000-00-00/1970-01-01/g' -e 's/nan//g' "  + ' > ' + file_name 
	cmd_iconv = 'iconv -f utf-8 -t gb18030 ' + file_name + ' > ' + storage_path + table + '.gbk'	
	cmd_mv = 'mv ' + storage_path + table + '.gbk' + ' ' + storage_path + table + '.tsv'
	cmd_rm = 'rm -f ' + storage_path + '*.tmp'

	os.system(cmd)
	os.system(cmd_iconv)	
	#os.system(cmd_rm)	
	os.system(cmd_mv)	

	print 'done table', table

table=sys.argv[1]
process_default(table)
