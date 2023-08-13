#!/bin/bash

function tasks.upgrade.infer {

    echo "latest"

}

function tasks.upgrade {

    core.tasks.run_tasks "$(tasks.upgrade.infer)"

}
