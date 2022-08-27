function list_first {

    local IFS="$SEP"
    local arr=($1)
    echo "${arr[0]}"
    
}
