#!/bin/bash

function tasks.zora_test {

    node.exec_module "zora-testrunner.mjs" "$TEST_PATTERN"

}
