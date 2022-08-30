#!/bin/bash

function parcel_dist {

    set -e

    parcel_command="${1:-build}"
    [ "$parcel_command" = "build" ] && base_path="$WEB_BASE_PATH"
    [ -z "$base_path" ] && base_path="/"

    run_task code-gen
    run_task index-html-template-gen
    run_task index-html-render-template

    export BABEL_OMIT_PRESETS="@babel/preset-env | @babel/preset-react"

    # shellcheck disable=SC2086
    parcel "$parcel_command" \
        $PARCEL_OPTIONS \
        --public-url "$base_path" \
        --dist-dir "$DIST" \
        "${@:2}"

}
