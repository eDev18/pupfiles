class console::term {
    package {'rxvt-unicode-patched':}
    package {'urxvt-perls':}
    aur_package {'urxvt-vtwheel':}
    enduser_file { '.config/Xresources':
        ensure  => file,
        source  => 'console/term',
        recurse => true,
        mode    => 0644,
        require => Package['rxvt-unicode-patched'],
    }
    enduser_file { '.colors':
        ensure  => directory,
        source  => 'console/term',
        recurse => true,
        mode    => 0644,
        require => Package['rxvt-unicode-patched'],
    }
}
