function list_of_func {

    local prefix="${1:-f}"
    local n=1
    
    while is_function "$prefix$n"
    do
        echo -n "$prefix$n "
        n=$((n + 1))
    done

}
