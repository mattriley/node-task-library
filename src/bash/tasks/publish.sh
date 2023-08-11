#!/bin/bash

function tasks.publish.infer {

    echo "deploy"

}

function tasks.publish {

    task_runner.run_tasks "$(tasks.publish.infer)" "$@"

}
