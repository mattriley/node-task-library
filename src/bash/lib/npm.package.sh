#!/bin/bash

function lib.npm.package {

    jq -r ".$1 // empty" "$PACKAGE_JSON"
    
}
