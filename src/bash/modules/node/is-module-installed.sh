#!/bin/bash

function node.is_module_installed {

    [ -f "$(pwd)/$NODE_MODULES/$1" ]

}
