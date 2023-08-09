#!/bin/bash

function tasks.itermocil {

    core.run_task "itermocil-config-gen" && \
    mkdir -p "$HOME/.itermocil" && \
    itermocil --here

}
