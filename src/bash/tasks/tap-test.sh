#!/bin/bash

function tap_test {

    set -e

    tap --no-coverage "$@" "$TESTS" 

    # tap seems to not accept glob so passing test path instead

}
