#!/bin/bash

function tasks.publish.infer {

    echo "deploy"

}

function tasks.publish {

    core.run_tasks "$(tasks.publish.infer)" "$@"

}
