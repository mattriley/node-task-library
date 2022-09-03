#!/bin/bash

function startup.export_functions {

    for script in "$1"/*.sh; do
        source "$script"
    done

}
