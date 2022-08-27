function find {

    local IFS="$SEP"
    local arr=($1) 
    local func=$2

    for item in "${arr[@]}"; do 
        $func "$item" && echo "$item" && break;
    done

}
