#!/bin/bash

function var_loader.uniq_vars {

    sort <(echo "$1" ) <(echo "$2") | uniq -u

}
