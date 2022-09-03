#!/bin/bash

function tasks.indexgen {

    ui.newline

    # shellcheck disable=SC2086
    indexgen $BARREL_PATHS $INDEXGEN_OPTIONS "$@"

}
