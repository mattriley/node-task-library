#!/bin/bash

function ESLINT_CONFIG {
    echo "$PACKAGE_ROOT/.eslintrc.json"
}

function ESLINT_PATHS {
    echo "$TEST_WATCH_PATHS"
}

function ESLINT_CONDITIONAL_PLUGINS {
    echo "react | jest | mocha | tap | tape"
}

function ESLINT_PLUGINS {
    echo -n "import | "
    function callback { npm.has_any_dependency "$1"; }
    list.filter "$ESLINT_CONDITIONAL_PLUGINS"
}

function SHELLCHECK_PATHS {
    echo "$TEST_WATCH_PATHS | $TASKS"
}
