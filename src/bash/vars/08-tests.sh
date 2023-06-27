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
    echo "jest | mocha | tap | tape | zora"
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

function TEST_WATCH_PATHS {
    function callback { [ -d "$1" ]; }
    list.filter "$SRC | $TESTS | $TESTING"
}

function TEST_RUNNER {
    function callback { npm.has_dev_dependency "$1"; } 
    list.find "$SUPPORTED_TEST_RUNNERS"
}

function CUSTOM_TEST_RUNNER {
    echo "$TESTING/test-runner"
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
