#!/bin/bash

set -e

npx task dev-links
npx task install
npx task husky
npx task config-gen
npx task npm-latest
