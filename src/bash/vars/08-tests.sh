#!/bin/bash

function DEFAULT_COV_TASK {
    echo "c8-cov"
}

function DEFAULT_COV_REPORT_TASK {
    echo "c8-cov-report"
}

function DEFAULT_TEST_TASK {
    echo "node-test"
}

function DEFAULT_TEST_WATCH_TASK {
    echo "chokidar-test-watch"
}

function SUPPORTED_TEST_RUNNERS {
    echo "jest | mocha | tap | tape | module-testrunner"
}

function TESTS {
    echo "$PACKAGE_ROOT/tests"
}

function TEST_PATTERN {
    echo "$TESTS/**/*.test.{js,mjs}"
}

function TESTING {
    echo "$PACKAGE_ROOT/testing"
}

function TESTING_MODULES {
    echo "$TESTING/modules"
}

function TEST_WATCH_PATHS {
    list.filter "$SRC | $TESTS | $TESTING" fs.dir_exists
}

function TEST_RUNNER {
    list.find "$SUPPORTED_TEST_RUNNERS" predicates.node_module_installed
}

function CUSTOM_TEST_RUNNER {
    local test_runner
    [ -d "$TESTING" ] && test_runner=$(find "$TESTING" -name "test-runner.*js" -print -quit)
    [ ! "$test_runner" ] && test_runner="$TASK_LIBRARY_ROOT/src/node/bin/test-module-runner.js"
    echo "$test_runner"
}

function COVERAGE {
    echo "$OUTPUT_ROOT/coverage"
}

function COVERAGE_JSON_SUMMARY {
    echo "$COVERAGE/coverage-summary.json"
}

function COVERAGE_BROWSER {
    echo "Google Chrome"
}

function COV_BRANCHES {
    echo "100"
}

function COV_LINES {
    echo "100"
}

function COV_FUNCTIONS {
    echo "100"
}

function COV_STATEMENTS {
    echo "100"
}
