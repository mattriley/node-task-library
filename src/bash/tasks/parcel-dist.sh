#!/bin/bash

function tasks.parcel_dist {

    local parcel_command="${1:-build}"
    local parcel_args="${*:2}"
    local base_path; [ "$parcel_command" = "build" ] && base_path="$WEB_BASE_PATH"
    [ -z "$base_path" ] && base_path="/"

    export BABEL_OMIT_PRESETS="@babel/preset-env | @babel/preset-react"

    # shellcheck disable=2086
    core.tasks.run_tasks "code-gen | dist-static | index-html-template | index-html-render-template" && \
    parcel "$parcel_command" \
        $PARCEL_OPTIONS \
        --public-url "$base_path" \
        --dist-dir "$DIST" \
        $parcel_args

}
