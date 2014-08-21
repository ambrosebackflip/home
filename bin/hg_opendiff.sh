#!/bin/sh

# opendiff returns immediately, without waiting for FileMerge to exit.
# Piping the output makes opendiff wait for FileMerge.

echo "$@"
xcrun opendiff "$@" | cat
