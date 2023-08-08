#!/bin/bash

function tasks.dev.infer {

    echo "itermocil"

}

function tasks.dev {

    tasks.run_task "$(tasks.dev.infer)"
    tasks.edit

}
