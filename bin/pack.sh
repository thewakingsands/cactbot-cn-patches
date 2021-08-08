#!/bin/bash
set -eo pipefail

cd cactbot
npm install
npm run build
cd ..

OUT=cactbot_webonly
BASE=cactbot

rm -rf $OUT
mkdir -p $OUT

cp -r $BASE/dist/ui/ $OUT/
cp -r $BASE/dist/resources/ $OUT/
cp $BASE/*.md $OUT/

# manually copy readme due to avoid local user/ files
mkdir -p $OUT/user/
cp $BASE/user/README.txt $OUT/user/
cp $BASE/user/*-example.* $OUT/user/
cp $BASE/user/test-override.txt $OUT/user/

7z a releases/cactbot-cn-`date "+%Y-%m-%d-%H-%M-%S"`-web-only.zip $OUT
