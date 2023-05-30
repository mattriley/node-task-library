#!/bin/bash

function tasks.dev.infer {

    echo "itermocil"

}

function tasks.dev {

    lib.run_task "$(tasks.dev.infer)"
    tasks.edit

}
