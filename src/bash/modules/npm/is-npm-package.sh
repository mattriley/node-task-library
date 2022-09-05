#!/bin/bash

function npm.is_npm_package {

    [ -f "$PACKAGE_JSON" ]

}
