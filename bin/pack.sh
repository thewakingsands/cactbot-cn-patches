#!/bin/bash
set -eo pipefail

7z a releases/cactbot-cn-"$UPSTREAM_TAG"-web-only.zip cactbot/LICENSE cactbot/ui cactbot/user cactbot/resources
