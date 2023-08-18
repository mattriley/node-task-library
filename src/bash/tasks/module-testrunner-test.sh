#!/bin/bash

function tasks.module_testrunner_test {

    local node_options; node.module_installed 'global-jsdom' && node_options="-r global-jsdom/register"

    # shellcheck disable=2046,2153
    NODE_OPTIONS="$NODE_OPTIONS $node_options $*" node.exec_infer "./$NODE_MODULES/module-testrunner/bin/test" $(tests.list_tests)

}
