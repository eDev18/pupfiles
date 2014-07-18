class desktop::graphics::nvidia {
    package {'nvidia':}
    package {'nvidia-utils':}
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
}
