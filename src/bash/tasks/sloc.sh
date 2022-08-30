#!/bin/bash

set -e

[ ! -d "$SRC" ] && warn "$SRC not found" && exit

mkdir -p "$METRICS"

npx task sloc-infer
