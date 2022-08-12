function has_dev_dependency {
    found=$(jq ".devDependencies | has(\"$1\")" "$PACKAGE_JSON")
    [ $found = "true" ]
    return "$?"
}
