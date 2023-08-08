#!/bin/bash

function tasks.metrics.infer {

    echo "cov | sloc | metrics-summary"

}


function tasks.metrics {

    tasks.run_tasks "$(tasks.metrics.infer)"

}
