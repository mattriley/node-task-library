#!/bin/bash

# shellcheck disable=SC2086
npx eslint --ext ".mjs" --ext ".js" $ESLINT_PATHS "$@"
