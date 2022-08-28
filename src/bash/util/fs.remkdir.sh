function fs.remkdir {

    rm -rf "$1" && mkdir -p "$1"
    
}
