#!/bin/bash

function tasks.cloc_sloc {

    set -e

    cloc --json "$SRC" > "$METRICS_LOC"

}
