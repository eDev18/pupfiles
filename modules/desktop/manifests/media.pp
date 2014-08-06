class desktop::media {
    include desktop::media::pulseaudio

    package {'vlc':}
    package {'ffmpeg':}
    include desktop::media::mpd
    include desktop::media::ncmpcpp
    include desktop::media::mplayer
    package {'mencoder':}
    package {'handbrake-cli':}
    package {'handbrake':}    
}
