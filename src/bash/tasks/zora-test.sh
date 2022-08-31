#!/bin/bash

function tasks.zora_test {

    set -e

    lib.node.exec_module "zora-testrunner.mjs" "$TEST_PATTERN"

}
