#!/bin/bash

function npm.has_dependency {

    [ "$(tools.jq ".dependencies | has(\"$1\")" "$PACKAGE_DEPENDENCIES_JSON")" = "true" ]

}
