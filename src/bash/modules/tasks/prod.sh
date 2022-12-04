#!/bin/bash

function tasks.deploy {

    export STAGE="prod"

    lib.run_tasks "deploy" "$@"

}
