#!/bin/bash

function indexgen {

    set -e

    # shellcheck disable=SC2086
    indexgen $BARREL_PATHS $INDEXGEN_OPTIONS "$@"

}
