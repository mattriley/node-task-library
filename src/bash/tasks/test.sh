#!/bin/bash

function tasks.test {

    set -e

    fs.empty "$TESTS" && util.warn "No tests found" && exit

    lib.run_task test-infer

}
