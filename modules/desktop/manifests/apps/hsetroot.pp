class desktop::apps::hsetroot {
    package { 'hsetroot': }
    enduser_file { '.wallpapers':
        ensure  => directory,
        source  => 'desktop/apps/hsetroot',
        recurse => true,
        require => Package['hsetroot'],
    }
}
