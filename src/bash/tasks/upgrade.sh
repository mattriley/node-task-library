#!/bin/bash

function tasks.upgrade.infer {

    echo "latest"

}

function tasks.upgrade {

    core.run_tasks "$(tasks.upgrade.infer)"

}
