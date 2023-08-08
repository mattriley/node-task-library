#!/bin/bash

function tasks.itermocil {

    tasks.run_task "itermocil-config-gen" && \
    mkdir -p "$HOME/.itermocil" && \
    itermocil --here

}
