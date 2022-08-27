function list_filter {

    local IFS="$SEP"
    local arr=($1)
    local callback=${2:-"callback"}
    local res=()
    
    for item in "${arr[@]}"; do 
        $callback "$item" && res+=("$item")
    done
    
    unset $callback
    list_join "${res[*]}"

}
