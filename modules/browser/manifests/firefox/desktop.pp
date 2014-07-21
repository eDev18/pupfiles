class browser::firefox::desktop {
    # Prevents Firefox from creating a ~/Desktop directory.
    enduser_file { '.config/user-dirs.dirs':
        ensure => present,
        source => 'browser/firefox/desktop'
    }
}
