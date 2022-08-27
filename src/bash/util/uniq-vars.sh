function uniq_vars {

    sort <(echo "$1" ) <(echo "$2") | uniq -u

}
