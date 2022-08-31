#!/bin/bash

function util.fs.remkdir {

    rm -rf "$1" && mkdir -p "$1"
    
}
