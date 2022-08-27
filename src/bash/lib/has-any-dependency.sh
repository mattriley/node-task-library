function has_any_dependency {
    
    has_dependency "$1" || has_dev_dependency "$1"

}
