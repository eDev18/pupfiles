class desktop::graphics::nvidia {
    package {'libva-vdpau-driver':}
    include base::packaging::multilib
    include base::mkinitcpio
    include desktop::xorg
    file { '/etc/X11/edid-shimian.bin':
        source  => 'puppet:///modules/desktop/graphics/edid-shimian.bin',
        require => Class['desktop::xorg'],
    }
}
