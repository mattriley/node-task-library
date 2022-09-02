#!/bin/bash

function tasks.cloc_sloc {

    cloc --json "$SRC" > "$METRICS_LOC"

}
