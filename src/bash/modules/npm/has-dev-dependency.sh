#!/bin/bash

function node.is_module_installed {

    [ "$(tools.jq ".devDependencies | has(\"$1\")" "$PACKAGE_DEPENDENCIES_JSON")" = "true" ]

}
