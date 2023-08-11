#!/bin/bash

function tasks.latest.infer {

    echo "npm-latest"

}

function tasks.latest {

    task_runner.run_tasks "$(tasks.latest.infer)"

}
