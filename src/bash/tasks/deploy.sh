#!/bin/bash

function tasks.deploy.infer {

    infer.deploy

}

function tasks.deploy {

    tasks.run_tasks "$(tasks.deploy.infer)" "$@"

}
