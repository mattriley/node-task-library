#!/bin/bash

function fs.is_dir_not_empty {

    ! fs.dir_empty "$1"

}
