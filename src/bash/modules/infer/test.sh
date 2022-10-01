#!/bin/bash

function infer.test {

    export BABEL_PRESET_ENV_MODULES="true"
    lib.infer_test_tasks "" "$DEFAULT_TEST_TASK"

}
