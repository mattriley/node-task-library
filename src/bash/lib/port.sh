#!/bin/bash

function lib.port {

    lib.node.exec_script "port-gen.js" "$1"

}
