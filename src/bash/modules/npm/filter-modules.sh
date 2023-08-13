#!/bin/bash

function npm.filter_modules {

    local modules="$1"
    modules=$(list.reject "$modules" npm.is_this_package)
    modules=$(list.reject "$modules" node.module_installed)
    echo "$modules"

}
