#!/bin/bash

function run_first_task {

    local tasks="$1"
    run_task "$(list.first "$tasks")"

}
