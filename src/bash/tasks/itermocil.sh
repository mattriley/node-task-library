#!/bin/bash

function tasks.itermocil {

    task_runner.run_task "itermocil-config-gen" && \
    mkdir -p "$HOME/.itermocil" && \
    itermocil --here

}
