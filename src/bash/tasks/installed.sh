#!/bin/bash

function tasks.installed {

    node.module_installed "$1"
    bool.from_exit_status $?

}
