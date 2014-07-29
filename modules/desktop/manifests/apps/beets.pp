class desktop::apps::beets {
    package{ 'beets': }

    enduser_file { '.config/beets':
        source  => 'desktop/apps/beets',
        recurse => true
    }
}
