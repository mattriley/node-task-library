#!/bin/bash

function tasks.itermocil {

    

    lib.run_task itermocil-config-gen

    mkdir -p "$HOME/.itermocil"

    itermocil --here

}
