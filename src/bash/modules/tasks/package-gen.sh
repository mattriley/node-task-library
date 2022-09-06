#!/bin/bash
# shellcheck disable=SC2005

function tasks.package_gen {

    echo "$(node.exec_script "package-gen.js")" > "$PACKAGE_JSON" && \
    git add "$PACKAGE_JSON"

}
