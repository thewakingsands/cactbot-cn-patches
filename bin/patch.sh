#!/bin/bash
set -eo pipefail

for patch in patches/*.diff
do
  echo "Applying patch $patch ..."
  cat "$patch" | git -C cactbot apply --ignore-space-change --ignore-whitespace --whitespace=fix 
done
echo "Patches applied!"
