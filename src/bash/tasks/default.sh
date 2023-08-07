#!/bin/bash

function tasks.default.infer {

    echo "pre-commit"

}

function tasks.default {

    lib.run_task "$(tasks.default.infer)"

}
