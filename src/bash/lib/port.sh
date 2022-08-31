#!/bin/bash

function lib.port {

    node.exec_script "port-gen.js" "$1"

}
