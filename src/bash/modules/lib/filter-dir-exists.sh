#!/bin/bash

function lib.filter_dir_exists {

    # shellcheck disable=SC2317
    function callback { ! fs.is_dir_empty "$1"; } 
    list.filter "$1"

}
