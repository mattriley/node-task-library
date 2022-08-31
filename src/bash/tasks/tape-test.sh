#!/bin/bash

function tasks.tape_test {

    set -e

    tape "$TEST_PATTERN" "$@"

}
