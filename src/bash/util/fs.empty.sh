#!/bin/bash

function util.fs.empty {

    [ ! -d "$1" ] || [ -z "$(ls -A "$1")" ]

}
