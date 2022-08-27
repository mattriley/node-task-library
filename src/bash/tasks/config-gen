#!/bin/bash

function f1 { echo "gitignore-gen"; }
function f2 { echo "package-gen"; }
function f3 { has_any_dependency "react" && echo "babel-config-gen"; }
function f4 { has_any_dependency "jest" && echo "jest-config-gen"; }
function f5 { has_any_dependency "eslint" && echo "eslint-config-gen"; }

tasks=$(infer_tasks "config-gen")
run_tasks "$tasks"
