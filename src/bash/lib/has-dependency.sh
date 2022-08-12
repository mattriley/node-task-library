function has_dependency {
    found=$(jq ".dependencies | has(\"$1\")" "$PACKAGE_JSON")
    [ $found = "true" ]
    return "$?"
}
