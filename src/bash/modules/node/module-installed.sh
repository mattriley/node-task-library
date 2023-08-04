#!/bin/bash

function node.module_installed {

    [ -d "$(pwd)/$NODE_MODULES/$1" ]

}
