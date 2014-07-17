class base::mkinitcpio {
    exec { 'mkinitcpio':
        command => shellquote(
            '/usr/bin/env', 'mkinitcpio',
            '-p', 'linux'm
        ),
        refreshonly => true,
    }
}

