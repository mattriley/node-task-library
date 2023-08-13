#!/bin/bash

function tasks.itermocil {

    core.tasks.run_task "itermocil-config-gen" && \
    mkdir -p "$HOME/.itermocil" && \
    itermocil --here

}
