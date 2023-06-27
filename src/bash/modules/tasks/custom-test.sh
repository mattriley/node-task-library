#!/bin/bash

function tasks.custom_test.precondition {

    [ ! -f "$CUSTOM_TEST_RUNNER" ] && echo "$CUSTOM_TEST_RUNNER not found"

}

function tasks.custom_test {

    node "$CUSTOM_TEST_RUNNER" "$(lib.list_tests)"

}
