#!/bin/bash

function tasks.deploy.infer {

    infer.deploy

}

function tasks.deploy {

    lib.run_tasks "$(tasks.deploy.infer)" "$@"

}
