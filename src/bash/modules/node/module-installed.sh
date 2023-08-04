#!/bin/bash

function node.module_installed {

    [ -d "$NODE_MODULES/$1" ]

}
