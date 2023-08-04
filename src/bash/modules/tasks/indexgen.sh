#!/bin/bash

function tasks.indexgen {

    # shellcheck disable=2086
    reporter.newline && \
    indexgen $BARREL_PATHS $INDEXGEN_OPTIONS "$@"

}
