#!/bin/bash

function net.port {

    node.exec_script "port-gen.js" "$1"

}
