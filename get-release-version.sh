#!/bin/bash

export CURRENT_VERSION=$(curl -s https://api.github.com/repos/gtadam/kubernetes-deploy-action/releases/latest | jq -r '.tag_name')
echo $(./increment_version.sh $1 $CURRENT_VERSION) > release_version.txt