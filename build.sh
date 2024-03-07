#!/bin/bash

if [ -d "cactbot" ]; then
  cd cactbot
  git clean -df
  git fetch main
  git reset --hard FETCH_HEAD
else
  git clone git@github.com:OverlayPlugin/cactbot.git cactbot
fi

cd ..
/bin/bash ./bin/patch.sh
/bin/bash ./bin/pack.sh

