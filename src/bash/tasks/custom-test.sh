#!/bin/bash

function tasks.custom_test.precondition {

    [ ! -f "$CUSTOM_TEST_RUNNER" ] && echo "$CUSTOM_TEST_RUNNER not found"

}

function tasks.custom_test {

    # shellcheck disable=2046
    NODE_OPTIONS="$NODE_OPTIONS $*" node "$CUSTOM_TEST_RUNNER" $(tests.list_tests)

}
