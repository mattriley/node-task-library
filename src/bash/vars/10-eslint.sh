#!/bin/bash

function ESLINT_CONFIG {
    echo "$PACKAGE_ROOT/.eslintrc.json"
}

function ESLINT_PATHS {
    # eslint doesn't like empty directories
    function callback { ! is_empty_dir "$1"; } 
    list.filter "$TEST_WATCH_PATHS"
}

function ESLINT_CONDITIONAL_PLUGINS {
    echo "react | jest | mocha | tap | tape"
}

function ESLINT_PLUGINS {
    echo -n "import | "
    function callback { has_dev_dependency "$1"; }
    list.filter "$ESLINT_CONDITIONAL_PLUGINS"
}
