#!/bin/bash

function tasks.indexgen {

    set -e

    # shellcheck disable=SC2086
    indexgen $BARREL_PATHS $INDEXGEN_OPTIONS "$@"

}
