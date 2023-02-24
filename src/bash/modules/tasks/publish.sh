#!/bin/bash

function tasks.publish.infer {

    echo "deploy"

}

function tasks.publish {

    lib.run_tasks "$(tasks.publish.infer)" "$@"

}
