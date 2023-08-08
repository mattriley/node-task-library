#!/bin/bash

function tasks.publish.infer {

    echo "deploy"

}

function tasks.publish {

    tasks.run_tasks "$(tasks.publish.infer)" "$@"

}
