#!/bin/bash
[[ $DEBUG ]] && set -x
[[ $PAUSE ]] && sleep $PAUSE
sed -i -e "s/POD_IP/${POD_IP}/g" \
       -e "s/HOSTNAME/${HOSTNAME}/g" /usr/share/elasticsearch/config/elasticsearch.yml
/bin/sh /usr/local/bin/docker-entrypoint.sh eswrapper
exec $@