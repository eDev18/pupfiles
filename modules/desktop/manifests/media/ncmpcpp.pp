class desktop::media::ncmpcpp {
    package { 'ncmpcpp':
        require => Package['mpd'],
    }
    enduser_file { '.ncmpcpp':
        ensure => directory,
    }
    enduser_file { '.ncmpcpp/config':
        source  => 'desktop/media/ncmpcpp',
        require => [
            Package['ncmpcpp'],                                # Actual program
            Enduser_file['.ncmpcpp'],                          # Parent directory
        ]
    }
}
