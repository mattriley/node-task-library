#!/bin/bash


function tasks.eslint {

    # shellcheck disable=SC2068,SC2086
    eslint --ext ".mjs" --ext ".js" $@ $ESLINT_PATHS

}
