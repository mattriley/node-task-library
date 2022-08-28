#!/bin/bash

function package {

    jq -r ".$1 // empty" "$PACKAGE_JSON"
    
}
