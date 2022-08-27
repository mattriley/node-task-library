function package {

    echo $(cat "$PACKAGE_JSON" | jq -r ".$1 // empty")
    
}
