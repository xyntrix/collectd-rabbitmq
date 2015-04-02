#!/bin/sh

egrep -q '^rabbitmq_memory value:GAUGE:0:U' /usr/share/collectd/types.db
export UPDATE=$?
if [ ${UPDATE} -ne 0 ]; then
  cat /etc/collectd.bin/rabbitmq.types.db.custom >> /usr/share/collectd/types.dbfi
