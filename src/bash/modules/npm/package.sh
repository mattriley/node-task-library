#!/bin/bash

function npm.package {

    tools.jq -r ".$1 // empty" "$PACKAGE_JSON"

}
