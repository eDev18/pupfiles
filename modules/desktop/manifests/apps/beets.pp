class desktop::apps::beets {
    package{ 'beets': }
    package{ 'python2-requests': }

    enduser_file { '.config/beets':
        source  => 'desktop/apps/beets',
        recurse => true
    }
}
