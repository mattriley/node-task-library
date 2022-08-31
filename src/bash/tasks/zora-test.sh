#!/bin/bash

function tasks.zora_test {

    set -e

    node.exec_module "zora-testrunner.mjs" "$TEST_PATTERN"

}
