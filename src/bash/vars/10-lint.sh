#!/bin/bash
# shellcheck disable=SC2317

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
    list.filter "$ESLINT_CONDITIONAL_PLUGINS" predicates.node_module_installed
}

function SHELLCHECK_PATHS {
    echo "$TEST_WATCH_PATHS | $TASKS"
}
