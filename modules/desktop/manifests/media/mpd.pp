class desktop::media::mpd {
    package { 'mpd': }
    enduser_file { '.config/mpd':
        ensure => directory,
    }
    enduser_file { '.config/mpd/mpd.conf':
        source  => 'desktop/media/mpd',
        require => [
            Package['mpd'],                                # Actual program
            Enduser_file['.config/mpd'],                   # Parent directory
        ]
    }
    enduser_file { '.config/mpd/playlists':
        ensure  => directory,
        require => Enduser_file['.config/mpd'],
    }
}
