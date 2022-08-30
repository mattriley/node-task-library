#!/bin/bash

[ ! -d "$SRC" ] && warn "$SRC not found" && exit

mkdir -p "$METRICS"

npx task sloc-infer
