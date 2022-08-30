#!/bin/bash

function cloc_sloc {

    set -e

    cloc --json "$SRC" > "$METRICS_LOC"

}
