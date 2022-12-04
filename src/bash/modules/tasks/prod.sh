#!/bin/bash

function tasks.prod {

    export STAGE="prod"

    lib.run_tasks "deploy" "$@"

}
