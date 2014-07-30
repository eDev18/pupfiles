class desktop::apps::beets {
    package{ 'beets': }
    package{ 'python2-requests': }
    package{ 'python2-mpd': }
    package{ 'python2-flask': }

    enduser_file { '.config/beets':
        source  => 'desktop/apps/beets',
        recurse => true
    }
}
