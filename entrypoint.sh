#!/bin/bash
set -e

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf --config-directory /etc/telegraf/telegraf.d/ "$@"
fi

exec "$@"
