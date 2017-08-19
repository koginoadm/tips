#!/bin/sh
# ssl-cert-check.sh
# http://qiita.com/skouno/items/a98bc384b4734a6e20a7
SERVER=$1
PORT=$2
TIMEOUT=25
/usr/lib/zabbix/externalscripts/timeout $TIMEOUT /usr/lib/zabbix/externalscripts/ssl-cert-check -s $SERVER -p $PORT -n | sed 's/  */ /g' | cut -f6 -d" "
