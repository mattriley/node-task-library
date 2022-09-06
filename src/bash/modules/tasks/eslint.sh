#!/bin/bash
# shellcheck disable=SC2068,SC2086

function tasks.eslint {

    eslint --ext ".mjs" --ext ".js" $@ $ESLINT_PATHS

}
