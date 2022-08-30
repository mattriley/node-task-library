#!/bin/bash

set -e

npx task cov
npx task sloc
npx task metrics-summary
