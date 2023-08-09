#!/bin/bash

function tasks.deploy.infer {

    infer.deploy

}

function tasks.deploy {

    core.run_tasks "$(tasks.deploy.infer)" "$@"

}
