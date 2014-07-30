class desktop::apps::beets {
    package { 'beets': }
    package { 'python2-requests': }
    package { 'python2-mpd': }
    package { 'python2-flask': }
    aur_package { 'python2-discogs-client': }

    enduser_file { '.config/beets':
        source  => 'desktop/apps/beets',
        recurse => true
    }
}
