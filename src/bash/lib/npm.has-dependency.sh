#!/bin/bash

function npm.has_dependency {

    [ $(jq ".dependencies | has(\"$1\")" "$PACKAGE_JSON") = "true" ]

}
