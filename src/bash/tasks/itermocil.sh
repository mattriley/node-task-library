#!/bin/bash

function itermocil {

    set -e

    run_task itermocil-config-gen

    mkdir -p "$HOME/.itermocil"

    itermocil --here

}
