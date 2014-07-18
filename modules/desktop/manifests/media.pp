class desktop::media {
    package {'vlc':}
    package {'ffmpeg':}
    include desktop::media::mplayer
    package {'mencoder':}
    package {'handbrake-cli':}
    package {'handbrake':}
    aur_package {'pavucontrol':}
}
