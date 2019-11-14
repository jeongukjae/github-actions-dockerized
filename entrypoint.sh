#!/bin/sh
set -e
./config.sh --url https://github.com/$REPOSITORY --token $TOKEN

$@
