#!/bin/bash

function startup.on_exit {

    [ "$IS_SUBTASK" ] && return
    [ "$ERROR_COUNT" -gt 0 ] && echo "❌ FAILURE" && exit 1
    echo "✅ SUCCESS" 

}
