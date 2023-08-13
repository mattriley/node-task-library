#!/bin/bash

function tasks.update.infer {

    echo "latest"

}

function tasks.update {

    core.tasks.run_tasks "$(tasks.update.infer)"

}
