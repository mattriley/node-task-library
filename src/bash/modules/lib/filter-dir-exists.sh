#!/bin/bash

function lib.filter_dir_exists {

    list.filter "$1" predicates.directory_empty

}
