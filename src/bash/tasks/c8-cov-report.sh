#!/bin/bash

set -e

npx c8 \
    --all \
    --src "$SRC" \
    --reporter="text-summary" \
    --reporter="json-summary" \
    --reporter="lcov" \
    "$@" \
    npx task test
