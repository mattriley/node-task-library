#!/bin/bash

function npm.has_dev_dependency {

    [ "$(jq ".devDependencies | has(\"$1\")" "$PACKAGE_DEPENDENCIES_JSON")" = "true" ]

}
