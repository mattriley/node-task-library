#!/bin/bash

function tasks.only.infer {

    echo "test-only"

}

function tasks.only {

    core.run_task "$(tasks.only.infer)"

}
