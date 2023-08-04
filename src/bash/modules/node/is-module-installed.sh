#!/bin/bash

function node.is_module_installed {

    [ -d "$NODE_MODULES/$1" ]

}
