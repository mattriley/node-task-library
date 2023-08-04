#!/bin/bash

function predicates.directory_empty {

    ! fs.is_dir_empty "$1"

}
