#!/bin/bash

function tasks.cov_open {

    core.run_task "cov-report" && \
    find "$COVERAGE" -name "index.html" -exec open -a "$COVERAGE_BROWSER" "{}" \; -quit

}
