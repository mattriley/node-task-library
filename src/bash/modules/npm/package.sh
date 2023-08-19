#!/bin/bash

function npm.package {

    json.get "$1" < "$PACKAGE_CONFIG"

}
