#!/bin/bash

function npm.has_any_dependency {

    [ "$(tools.jq ".devDependencies | has(\"$1\")" "$PACKAGE_DEPENDENCIES_JSON")" = "true" ]

}
