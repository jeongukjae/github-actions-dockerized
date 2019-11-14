#!/bin/sh
set -e
echo "$NAME\n$WORKDIR" | ./config.sh --url https://github.com/$REPOSITORY --token $TOKEN

$@
