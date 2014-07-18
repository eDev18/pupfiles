class desktop::media::mplayer {
    package {'mplayer':}
    enduser_file {'.mplayer':
        ensure => directory
    }
    enduser_file {'.mplayer/config':
        source => 'desktop/media/mplayer'
    }
}
