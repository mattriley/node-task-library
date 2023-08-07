#!/bin/bash

function tasks.only.infer {

    echo "test-only"

}

function tasks.only {

    lib.run_task "$(tasks.only.infer)"

}
