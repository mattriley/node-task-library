#!/bin/bash

function tasks.metrics_summary {

    set -e

    mkdir -p "$METRICS"

    [ -f "$COVERAGE_JSON_SUMMARY" ] && cp "$COVERAGE_JSON_SUMMARY" "$METRICS_COV"

    lib.node.exec_script "metrics-summary.js" > "$METRICS_SUMMARY"

}
