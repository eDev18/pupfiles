class desktop::media::pulseaudio {
    package {'pulseaudio':}
    package {'pulseaudio-alsa':}
    include base::packaging::multilib
    package {'lib32-libpulse':}
    package {'lib32-alsa-plugins':}
    aur_package {'pavucontrol':}
    aur_package {'pulseaudio-ctl':}
    
    file { '/etc/pulse/default.pa':
        ensure  => present,
        source  => 'puppet:///modules/desktop/media/pulseaudio/default.pa',
        require => Package['pulseaudio'],
    }
}
