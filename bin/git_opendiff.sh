#!/bin/sh

echo "$@"
xcrun opendiff "$2" "$5" -merge "$1"
