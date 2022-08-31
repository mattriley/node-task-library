#!/bin/bash

function lib.npm.has_any_dependency {
    
    lib.npm.has_dependency "$1" || lib.npm.has_dev_dependency "$1"

}
