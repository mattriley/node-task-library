#!/bin/bash

function npm.has_any_dependency {

    npm.has_dependency "$1" || npm.has_any_dependency "$1"

}
