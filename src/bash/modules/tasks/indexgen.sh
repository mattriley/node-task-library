#!/bin/bash

function tasks.indexgen {

    

    # shellcheck disable=SC2086
    indexgen $BARREL_PATHS $INDEXGEN_OPTIONS "$@"

}
