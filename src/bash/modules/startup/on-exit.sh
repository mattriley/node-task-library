#!/bin/bash

function startup.on_exit {

    [ "$IS_SUBTASK" ] && return
    echo
    [ "$ERROR_COUNT" -gt 0 ] && echo "${RED}FAILURE${NORM}" && exit 1
    echo "${GRE}SUCCESS${NORM}" 

}
