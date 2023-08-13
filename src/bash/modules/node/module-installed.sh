#!/bin/bash

function node.module_installed {

    fs.dir_exists "$(pwd)/$NODE_MODULES/$1"

}
