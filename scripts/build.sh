#!/usr/bin/env bash
./scripts/rebuildPatches.sh
git submodule update --recursive --init && ./scripts/applyPatches.sh
if [ "$1" == "--jar" ]; then
    pushd lightfall-proxy
    mvn clean package
fi
