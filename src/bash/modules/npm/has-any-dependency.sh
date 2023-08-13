#!/bin/bash

function node.has_any_dependecy {

    npm.has_dependency "$1" || node.module_installed "$1"

}
