#!/bin/bash

function node.is_module_installed {

    fs.dir_exists "$(pwd)/$NODE_MODULES/$1"

}
