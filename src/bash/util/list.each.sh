function list.each {

    local IFS="$SEP"
    local arr=($1)
    local callback=${2:-"callback"}

    for item in "${arr[@]}"; do 
        $callback "$item"
    done

    unset $callback

}
