#!/bin/bash

function fs.is_dir_not_empty {

    ! fs.is_dir_empty "$1"

}
