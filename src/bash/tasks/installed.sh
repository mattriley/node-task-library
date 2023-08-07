#!/bin/bash

function tasks.installed {

    node.is_module_installed "$1" && echo "true" || echo "false"

}
