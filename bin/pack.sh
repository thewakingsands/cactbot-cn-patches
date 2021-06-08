#!/bin/bash
set -eo pipefail

cd cactbot
npm install
npm run build
cd ..
7z a releases/cactbot-cn-"$UPSTREAM_TAG"-web-only.zip cactbot/LICENSE cactbot/ui cactbot/user cactbot/resources cactbot/dist
