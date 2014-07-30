class desktop::apps::beets {
    package{ 'beets': }
    package{ 'python2-requests': }
    package{ 'python2-mpd': }

    enduser_file { '.config/beets':
        source  => 'desktop/apps/beets',
        recurse => true
    }
}
