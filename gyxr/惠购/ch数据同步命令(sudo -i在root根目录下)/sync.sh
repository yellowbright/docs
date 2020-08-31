#! /bin/bash

# data
echo 'sync data'
rsync -e 'ssh -p 9122' /var/lib/clickhouse/data/spl_huigou root@gyxr.tpddns.cn:/var/lib/clickhouse/ga/data/ -avzP --delete --chown=systemd-network:systemd-journal

# metadata
echo 'sync metadata'
rsync -e 'ssh -p 9122' /var/lib/clickhouse/metadata/spl_huigou root@gyxr.tpddns.cn:/var/lib/clickhouse/ga/metadata/ -avzP --chown=systemd-network:systemd-journal

# re-attach tables
#ssh root@gyxr.tpddns.cn -p 9122 "/root/rettachCh.sh spl_huigou"
ssh root@gyxr.tpddns.cn -p 9122 "/root/rettachDb.sh spl_huigou"
