#!/bin/bash

function tasks.itermocil {

    set -e

    lib.run_task itermocil-config-gen

    mkdir -p "$HOME/.itermocil"

    itermocil --here

}
