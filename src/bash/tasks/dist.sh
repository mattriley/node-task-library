#!/bin/bash

set -e

fs.remkdir "$DIST"

npx task dist-static
npx task dist-infer

if [ "$DIST_FLATTEN" = "true" ]; then
  fs.flatten "$DIST"
fi
