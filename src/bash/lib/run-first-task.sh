#!/bin/bash

function lib.run_first_task {

    local tasks="$1"
    lib.run_task "$(util.list.first "$tasks")"

}
