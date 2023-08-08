#!/bin/bash

function tasks.default.infer {

    echo "pre-commit"

}

function tasks.default {

    tasks.run_task "$(tasks.default.infer)"

}
