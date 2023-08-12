#!/bin/bash

function node.module_installed {

    [ "$(tools.jq ".devDependencies | has(\"$1\")" "$PACKAGE_JSON")" = "true" ]

}
