#!/bin/bash

function fs.dir_empty {

    [ ! -d "$1" ] || [ -z "$(ls -A "$1")" ]

}
