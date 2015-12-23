#!/usr/bin/env sh

FILENAME=$1
cat $FILENAME | grep '^\s*"' | sed -e 's/^[[:space:]]*"//'
