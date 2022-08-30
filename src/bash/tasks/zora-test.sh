#!/bin/bash

set -e

node.exec_module "zora-testrunner.mjs" "$TEST_PATTERN"
