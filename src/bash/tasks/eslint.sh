#!/bin/bash

function eslint {

    set -e

    # shellcheck disable=SC2086
    eslint --ext ".mjs" --ext ".js" $ESLINT_PATHS "$@"

}
