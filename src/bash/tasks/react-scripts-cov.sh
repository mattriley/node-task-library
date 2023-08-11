#!/bin/bash

function tasks.react_scripts_cov {

    task_runner.run_task "react-scripts-cov-report" \
        --roots "$SRC" \
        --collectCoverageFrom "<rootDir>/$SRC/**" \
        --coverageThreshold="{\"global\":{\"branches\":$COV_BRANCHES,\"functions\":$COV_FUNCTIONS,\"lines\":$COV_LINES,\"statements\":$COV_STATEMENTS}}"

}
