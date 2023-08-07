#!/bin/bash

function tasks.metrics.infer {

    echo "cov | sloc | metrics-summary"

}


function tasks.metrics {

    lib.run_tasks "$(tasks.metrics.infer)"

}
