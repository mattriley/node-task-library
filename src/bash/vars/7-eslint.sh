#!/bin/bash

function ESLINT_PATHS {
    # eslint doesn't like empty directories
    function predicate { [ "$(ls -A $1)" ]; } 
    filter "$TEST_WATCH_PATHS" predicate
    unset predicate
}

function CONDITIONAL_ESLINT_PLUGINS {
    echo "react | jest | mocha | tap | tape"
}

function ESLINT_PLUGINS {
    echo -n "import | "
    function predicate { has_dev_dependency "$1"; }
    filter "$CONDITIONAL_ESLINT_PLUGINS" predicate
    unset predicate
}
