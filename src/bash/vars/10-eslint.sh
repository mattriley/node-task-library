#!/bin/bash

function ESLINT_CONFIG {
    echo "$PACKAGE_ROOT/.eslintrc.json"
}

function ESLINT_PATHS {
    # eslint doesn't like empty directories
    function predicate { [ ! -z "$(ls -A "$1")" ]; } 
    filter "$TEST_WATCH_PATHS" predicate
    unset predicate
}

function ESLINT_CONDITIONAL_PLUGINS {
    echo "react | jest | mocha | tap | tape"
}

function ESLINT_PLUGINS {
    echo -n "import | "
    function predicate { has_dev_dependency "$1"; }
    filter "$ESLINT_CONDITIONAL_PLUGINS" predicate
    unset predicate
}
