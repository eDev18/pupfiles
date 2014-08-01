class desktop::graphics::nvidia {
    # package {'nvidia':}
    aur_package { 'nvidia-dkms': }
    package {'nvidia-utils':}
    package {'libva-vdpau-driver':}
    include base::packaging::multilib
    package { 'lib32-nvidia-utils':
        require => Class['base::packaging::multilib']
    }
    package { 'lib32-nvidia-libgl':
        require => Class['base::packaging::multilib']
    }
    include base::mkinitcpio
    include desktop::xorg
    file { '/etc/X11/xorg.conf.d/20-nvidia.conf':
        source  => 'puppet:///modules/desktop/graphics/nvidia/20-nvidia.conf',
        require => Class['desktop::xorg'],
    }
    file { '/etc/X11/edid-shimian.bin':
        source  => 'puppet:///modules/desktop/graphics/edid-shimian.bin',
        require => Class['desktop::xorg'],
    }

    aur_package { 'nvidia-hook': }
}
