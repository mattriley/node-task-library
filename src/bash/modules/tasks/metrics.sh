#!/bin/bash

function tasks.metrics {

    lib.run_tasks "cov | sloc | metrics-summary"

}
