#!/bin/bash

function tape_test {

    set -e

    tape "$TEST_PATTERN" "$@"

}
