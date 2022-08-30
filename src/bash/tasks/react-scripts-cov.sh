#!/bin/bash

function react_scripts_cov {

    set -e

    run_task react-scripts-cov-report \
        --roots "$SRC" \
        --collectCoverageFrom "<rootDir>/$SRC/**" \
        --coverageThreshold="{\"global\":{\"branches\":$COV_BRANCHES,\"functions\":$COV_FUNCTIONS,\"lines\":$COV_LINES,\"statements\":$COV_STATEMENTS}}"

}
