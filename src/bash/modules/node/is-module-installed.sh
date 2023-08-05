#!/bin/bash

function node.is_module_installed {

    [ -d "$(pwd)/$NODE_MODULES/$1" ]

}
