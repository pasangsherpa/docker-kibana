#!/bin/bash

set -e

# Add kibana as command if needed
if [ "${1:0:1}" = '-' ]; then
    set -- kibana "$@"
fi

# Drop root privileges if we are running kibana
if [ "$1" = 'kibana' ]; then
    exec gosu $(whoami) "$@"
fi

# As argument is not related to kibana,
# then assume that user wants to run his own process,
# for example a `bash` shell to explore this image
exec "$@"