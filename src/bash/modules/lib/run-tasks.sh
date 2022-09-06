#!/bin/bash

function lib.run_tasks {

    local tasks="$1"
    local result=0;
    function callback { ! lib.run_task "$1" && result=1; }
    list.each "$tasks"
    return $result;

}
