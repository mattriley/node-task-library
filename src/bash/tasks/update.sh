#!/bin/bash

function tasks.update.infer {

    echo "latest"

}

function tasks.update {

    lib.run_tasks "$(tasks.update.infer)"

}
