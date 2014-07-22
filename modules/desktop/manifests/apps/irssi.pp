class desktop::apps::irssi {
    package{'irssi':}
    enduser_file { '.irssi':
        ensure  => directory,
        source  => 'desktop/apps/irssi',
        require => Package['irssi'],
        recurse => true
    }
}
