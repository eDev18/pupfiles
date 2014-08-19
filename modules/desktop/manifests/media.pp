class desktop::media {
    include desktop::media::pulseaudio

    package {'vlc':}
    package {'ffmpeg':}
    package {'handbrake-cli':}
    package {'handbrake':}    
}
