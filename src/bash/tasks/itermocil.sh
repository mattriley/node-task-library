#!/bin/bash

function tasks.itermocil {

    core.tasks.run_task "itermocil-config" && \
    mkdir -p "$HOME/.itermocil" && \
    itermocil --here

}
