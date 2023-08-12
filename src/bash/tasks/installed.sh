#!/bin/bash

function tasks.installed {

    node.is_module_installed "$1"
    bool.from_exit_status $?

}
