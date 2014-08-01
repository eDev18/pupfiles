class development {
    # Ensure the mariadb service will be enabled.
    class { 'server::services::mariadb':
        service => true
    }
    require server::services::mariadb

    include development::haskell
    include development::r
    include development::rust
    include development::vagrant
    include development::utils
}
