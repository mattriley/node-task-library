#!/bin/bash

function tasks.indexgen {

    # shellcheck disable=SC2086
    reporter.newline && \
    indexgen $BARREL_PATHS $INDEXGEN_OPTIONS "$@"

}
