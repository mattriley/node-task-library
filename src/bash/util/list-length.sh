function list_length {

    local IFS="$SEP"
    local arr=($1)
    echo "${#arr[@]}"
    
}
