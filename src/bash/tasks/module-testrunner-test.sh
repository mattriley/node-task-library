#!/bin/bash

function tasks.module_testrunner_test {

    # shellcheck disable=2046
    NODE_OPTIONS="$NODE_OPTIONS $*" mtr $(tests.list_tests)

}