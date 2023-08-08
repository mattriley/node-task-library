#!/bin/bash
# shellcheck disable=2068

function tasks.tape_test {

    tape "$TEST_PATTERN" $@

}
