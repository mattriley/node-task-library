#!/bin/bash

function node.module_installed {

    npm.has_dependency "$1" || node.module_installed "$1"

}
