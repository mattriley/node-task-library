#!/bin/bash
# shellcheck disable=2317

function ESLINT_CONFIG {
    echo "$PACKAGE_ROOT/.eslintrc.json"
}

function ESLINT_PATHS {
    echo "$TEST_WATCH_PATHS"
}

function ESLINT_CONDITIONAL_PLUGINS {
    echo "react | jest | mocha | tap | tape | testing-library"
}

function ESLINT_PLUGINS {
    echo -n "import | "
    list.filter "$ESLINT_CONDITIONAL_PLUGINS" node.module_installed
}

function ESLINT_DETECTED {
    fs.file_exists "$ESLINT_CONFIG"
    bool.from_exit_status $?
}
