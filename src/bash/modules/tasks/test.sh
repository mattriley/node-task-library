#!/bin/bash

function tasks.test {

    set -e

    fs.is_dir_empty "$TESTS" && util.warn "No tests found" && exit

    lib.run_task test-infer

}
