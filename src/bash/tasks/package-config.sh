#!/bin/bash

function tasks.package_config {

    # TODO: Re-check this.
    # shellcheck disable=2005
    echo "$(node.exec_script "package-config.js")" > "$PACKAGE_CONFIG" && \
    git add "$PACKAGE_CONFIG"

}
