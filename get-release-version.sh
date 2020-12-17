#!/bin/bash
curl -s https://api.github.com/repos/gtadam/$2/releases/latest
curl -s https://api.github.com/repos/gtadam/$2/releases/latest | jq -r '.tag_name'
export CURRENT_VERSION=$(curl -s https://api.github.com/repos/gtadam/$2/releases/latest | jq -r '.tag_name')
export WORKDIR=$(dirname "$0")
echo $($WORKDIR/increment_version.sh $1 $CURRENT_VERSION) > release_version.txt