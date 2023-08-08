#!/bin/bash

function tasks.only.infer {

    echo "test-only"

}

function tasks.only {

    tasks.run_task "$(tasks.only.infer)"

}
