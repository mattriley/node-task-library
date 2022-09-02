#!/bin/bash

function npm.package {

    jq -r ".$1 // empty" "$PACKAGE_JSON"

}
