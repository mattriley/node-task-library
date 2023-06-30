#!/bin/bash

function tasks.module_testrunner_test {

    # shellcheck disable=SC2046
    NODE_OPTIONS="$NODE_OPTIONS $*" mtr $(lib.list_tests)

}
