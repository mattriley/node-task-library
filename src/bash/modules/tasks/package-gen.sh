#!/bin/bash

function tasks.package_gen {

    

    # shellcheck disable=SC2005
    echo "$(node.exec_script "package-gen.js")" > "$PACKAGE_JSON"

    git add "$PACKAGE_JSON"

}
