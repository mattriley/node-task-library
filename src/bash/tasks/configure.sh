#!/bin/bash

function tasks.configure.infer {

    echo "config"

}

function tasks.configure {

    core.tasks.run_task "$(tasks.configure.infer)"

}
