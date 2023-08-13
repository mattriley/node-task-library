#!/bin/bash

function npm.install_dev {

    [ -n "$1" ] && npm.install "-D $1"

}
