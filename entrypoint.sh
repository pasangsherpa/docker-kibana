#!/bin/bash

set -e

# Add kibana as command if needed
if [[ "$1" == -* ]]; then
    set -- kibana "$@"
fi

# Run as user "kibana" if the command is "kibana"
if [ "$1" == kibana ]; then
    set -- gosu kibana "$@"
fi

exec "$@"