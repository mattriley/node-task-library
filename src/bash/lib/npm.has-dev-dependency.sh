#!/bin/bash

function lib.npm.has_dev_dependency {

    [ "$(jq ".devDependencies | has(\"$1\")" "$PACKAGE_JSON")" = "true" ]

}
