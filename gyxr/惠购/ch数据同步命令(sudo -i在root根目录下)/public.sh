#! /bin/bash

# data
echo 'sync data'
rsync -e 'ssh -p 9122' root@gyxr.tpddns.cn:/var/lib/clickhouse/ga/data/db_public /var/lib/clickhouse/data/ -avzP --delete --chown=systemd-resolve:systemd-journal

# metadata
echo 'sync metadata'
rsync -e 'ssh -p 9122' root@gyxr.tpddns.cn:/var/lib/clickhouse/ga/metadata/db_public /var/lib/clickhouse/metadata/ -avzP --chown=systemd-resolve:systemd-journal

# re-attach tables
/root/rettachCh.sh db_public
