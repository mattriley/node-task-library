#!/bin/bash

set -e

# shellcheck disable=SC2086
npx indexgen $BARREL_PATHS $INDEXGEN_OPTIONS "$@"
