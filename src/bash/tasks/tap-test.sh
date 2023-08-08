#!/bin/bash
# shellcheck disable=2068

function tasks.tap_test {

    tap --no-coverage $@ "$TESTS" 

    # tap seems to not accept glob so passing test path instead

}
