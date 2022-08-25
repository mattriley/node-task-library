#!/bin/bash

[ ! -d "$SRC" ] && warn "$SRC not found" && exit 0

mkdir -p "$METRICS"

npx task sloc-infer
