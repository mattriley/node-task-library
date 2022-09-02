#!/bin/bash

function startup.import_vars {

    local path="$TASK_LIBRARY_ROOT/src/bash/vars"
    startup.export_functions "$path" > /dev/null

}
