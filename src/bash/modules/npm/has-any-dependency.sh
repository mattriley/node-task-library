#!/bin/bash

function node.is_module_installed {

    npm.has_dependency "$1" || node.is_module_installed "$1"

}
