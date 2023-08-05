#!/bin/bash

function fs.dir_not_empty {

    ! fs.dir_empty "$1"

}
