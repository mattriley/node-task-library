#!/bin/bash
# shellcheck disable=2317

function tasks.copy_modules {

    local copy_modules_root; copy_modules_root="$TASK_LIBRARY_ROOT/src/node/copy-modules"

    function copy_module { 
        rm -rf "${MODULES/$1}:?"
        cp -r "$copy_modules_root/$1" "$MODULES"

        if [ "$1" = "routing" ]; then
            cp "$copy_modules_root/lambda.js" "$SRC"
            cp "$copy_modules_root/server.js" "$SRC"
        fi
    }

    list.each "$COPY_MODULES" copy_module

}
