#!/bin/bash

function tasks.metrics_summary {

    mkdir -p "$METRICS" && \
    ( [ -f "$COVERAGE_JSON_SUMMARY" ] && cp "$COVERAGE_JSON_SUMMARY" "$METRICS_COV"; return 0 ) && \
    node.exec_script "metrics-summary.js" > "$METRICS_SUMMARY"

}
