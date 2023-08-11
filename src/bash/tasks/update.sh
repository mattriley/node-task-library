#!/bin/bash

function tasks.update.infer {

    echo "latest"

}

function tasks.update {

    task_runner.run_tasks "$(tasks.update.infer)"

}
