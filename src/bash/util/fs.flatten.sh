function fs.flatten {

    find "$1/" -mindepth 2 -type f -exec mv -i '{}' "$1/" ';'
    find "$1/" -type d -empty -delete

}
