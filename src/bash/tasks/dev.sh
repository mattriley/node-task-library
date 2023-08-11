#!/bin/bash

function tasks.dev.infer {

    echo "itermocil"

}

function tasks.dev {

    task_runner.run_task "$(tasks.dev.infer)"
    tasks.edit

}
