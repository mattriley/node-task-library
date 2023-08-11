#!/bin/bash

function tasks.metrics.infer {

    echo "cov | sloc | metrics-summary"

}


function tasks.metrics {

    task_runner.run_tasks "$(tasks.metrics.infer)"

}
