#!/bin/bash

function tasks.module_testrunner_test {

    # shellcheck disable=2046
    NODE_OPTIONS="$NODE_OPTIONS $*" node.exec_infer "./$NODE_MODULES/module-testrunner/bin/test" $(tests.list_tests)

}
