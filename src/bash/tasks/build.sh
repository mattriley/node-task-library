#!/bin/bash

function tasks.build.infer {

    echo "dist"

}

function tasks.build {

    core.tasks.run_task "$(tasks.build.infer)"

}
