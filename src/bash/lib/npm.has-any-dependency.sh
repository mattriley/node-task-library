function npm.has_any_dependency {
    
    npm.has_dependency "$1" || npm.has_dev_dependency "$1"

}
