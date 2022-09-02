#!/bin/bash

function tasks.zora_spa_test {

    

    node.exec_module "zora-spa-testrunner.mjs" "$TEST_PATTERN"

}
