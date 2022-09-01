#!/bin/bash

function fs.is_dir_empty {

    [ ! -d "$1" ] || [ -z "$(ls -A "$1")" ]

}
