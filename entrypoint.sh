#!/bin/bash

set -euxo pipefail

conf_file=/mnt/storage/alfis.toml

if [ ! -f ${conf_file} ]; then
    alfis -g > ${conf_file}
fi

exec alfis -w /mnt/storage/ -l alfis.log
