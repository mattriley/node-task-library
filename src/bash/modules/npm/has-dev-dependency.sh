#!/bin/bash

function node.has_dev_dependency {

    [ "$(tools.jq ".devDependencies | has(\"$1\")" "$PACKAGE_JSON")" = "true" ]

}
