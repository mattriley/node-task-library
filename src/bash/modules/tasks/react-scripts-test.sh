#!/bin/bash

function tasks.react_scripts_test {

    

    react-scripts test \
        --roots "$TESTS" \
        --testMatch "<rootDir>/$TEST_PATTERN" \
        --watchAll false \
        --silent \
        --passWithNoTests \
        "$@"

}
