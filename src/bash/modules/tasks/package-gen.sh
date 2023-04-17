#!/bin/bash

function tasks.package_gen {

    # TODO: Re-check this.
    # shellcheck disable=SC2005
    echo "$(node.exec_script "package-gen.js")" > "$PACKAGE_JSON" && \
    git add "$PACKAGE_JSON"

}
