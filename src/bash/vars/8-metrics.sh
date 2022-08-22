#!/bin/bash

function METRICS {
    echo "$OUTPUT_ROOT/metrics"
}

function METRICS_COV {
    echo "$METRICS/cov.json"
}

function METRICS_LOC {
    echo "$METRICS/loc.json"
}

function METRICS_SUMMARY {
    echo "$METRICS/metrics-summary.json"
}
