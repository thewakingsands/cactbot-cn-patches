#!/bin/bash
set -eo pipefail
if [ -e cactbot ]; then
  echo "Cleaning workspace ..."
  git -C cactbot clean -dxf
  echo "Fetching upstream ..."
  git -C cactbot fetch
else
  echo "Cloning workspace ..."
  git clone https://github.com/quisquous/cactbot.git cactbot
fi

echo "Checking out tag ..."
git -C cactbot reset --hard "$UPSTREAM_TAG"
