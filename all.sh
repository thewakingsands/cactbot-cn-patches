#!/bin/bash
set -eo pipefail

if [ "$1" == "" ]; then
  echo "$0: need version"
  exit 1
fi

export UPSTREAM_TAG=$1
bin/tag.sh
bin/patch.sh
bin/pack.sh
