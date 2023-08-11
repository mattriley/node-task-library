#!/bin/bash

function tasks.deploy.infer {

    infer.deploy

}

function tasks.deploy {

    task_runner.run_tasks "$(tasks.deploy.infer)" "$@"

}
