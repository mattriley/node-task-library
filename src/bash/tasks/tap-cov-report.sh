#!/bin/bash

set -e

npx task tap-test \
    --no-browser \
    --no-check-coverage \
    --coverage \
    --coverage-report="html" \
    "$@"
