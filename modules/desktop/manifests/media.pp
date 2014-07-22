class desktop::media {
    package {'vlc':}
    package {'ffmpeg':}
    include desktop::media::mpd
    include desktop::media::ncmpcpp
    include desktop::media::mplayer
    package {'mencoder':}
    package {'handbrake-cli':}
    package {'handbrake':}
    package {'pulseaudio':}
    package {'pulseaudio-alsa':}
    package {'lib32-libpulse':}
    package {'lib32-alsa-plugins':}
    aur_package {'pavucontrol':}
    aur_package {'pulseaudio-ctl':}
}
