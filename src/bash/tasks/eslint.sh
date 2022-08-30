#!/bin/bash

set -e

# shellcheck disable=SC2086
npx eslint --ext ".mjs" --ext ".js" $ESLINT_PATHS "$@"
