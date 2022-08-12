function package {
    echo $(cat ./package.json | jq -r ".$1 // empty")
}
