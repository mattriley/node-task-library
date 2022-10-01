#!/bin/bash
# shellcheck disable=SC2086

function tasks.indexgen {

    reporter.newline && \
    indexgen $BARREL_PATHS $INDEXGEN_OPTIONS "$@"

}
