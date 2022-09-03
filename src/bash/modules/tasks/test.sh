#!/bin/bash

function tasks.test {

    fs.is_dir_empty "$TESTS" && ui.warn "No tests found" && return

    lib.run_task test-infer

}
