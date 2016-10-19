#!/bin/bash
set -e
if [[ ! -e Dockerfile ]]; then
    echo "No Dockerfile found in current folder"
    exit 1
fi

imagename="incodehq/${PWD##*/}"
echo $imagename
docker build -t $imagename .
