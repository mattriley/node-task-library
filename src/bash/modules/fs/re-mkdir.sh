#!/bin/bash

function fs.re_mkdir {

    rm -rf "$1" && mkdir -p "$1"
    
}
