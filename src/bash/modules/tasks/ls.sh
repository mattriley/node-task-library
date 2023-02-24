#!/bin/bash

function tasks.ls {

    local list; list=$(compgen -A function | grep "tasks.")
    echo "${list//tasks./}"

}
