#!/bin/bash

function lib.run_tasks {

    local tasks="$1"
    function callback { lib.run_task "$1"; }
    util.list.each "$tasks"

}
