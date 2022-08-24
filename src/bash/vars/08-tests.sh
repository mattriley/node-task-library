#!/bin/bash

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
    function predicate { [ -d "$1" ]; }
    filter "$SRC | $TESTS | $TESTING" predicate
    unset predicate
}

function TEST_RUNNER {
    function predicate { has_dev_dependency "$1"; } 
    find "$SUPPORTED_TEST_RUNNERS" predicate
    unset predicate
}

function COVERAGE {
    echo "$OUTPUT_ROOT/coverage"
}

function COVERAGE_JSON_SUMMARY {
    echo "$COVERAGE/coverage-summary.json"
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