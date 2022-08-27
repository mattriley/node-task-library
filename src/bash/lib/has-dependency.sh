function has_dependency {

    [ $(jq ".dependencies | has(\"$1\")" "$PACKAGE_JSON") = "true" ]

}
