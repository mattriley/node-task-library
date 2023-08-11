#!/bin/bash

function node.is_module_absent {

    fs.dir_absent "$(pwd)/$NODE_MODULES/$1"

}
