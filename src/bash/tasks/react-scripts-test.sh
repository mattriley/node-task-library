#!/bin/bash

set -e

npx react-scripts test \
    --roots "$TESTS" \
    --testMatch "<rootDir>/$TEST_PATTERN" \
    --watchAll false \
    --silent \
    --passWithNoTests \
    "$@"
