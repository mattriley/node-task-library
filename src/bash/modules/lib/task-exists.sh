#!/bin/bash

function lib.task_exists {

    local tasks; tasks=$(lib.find_task_file "$1")
    [ -n "$tasks" ]

}
