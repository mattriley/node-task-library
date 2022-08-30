#!/bin/bash

set -e

node.exec_module "zora-spa-testrunner.mjs" "$TEST_PATTERN"
