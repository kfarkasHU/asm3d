#!/bin/sh

set -e

source ./.build/_constants.sh

source ./.build/_prebuild.sh
echo "[INF] ======"
source ./.build/compile.sh
echo "[INF] ======"
source ./.build/link.sh
echo "[INF] ======"
source ./.build/build.sh
source ./.build/_postbuild.sh