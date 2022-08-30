#!/bin/bash

function test {

    set -e

    fs.empty "$TESTS" && warn "No tests found" && exit

    run_task test-infer

}
