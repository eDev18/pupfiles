class base::grub (
    $grub_resolution = 'auto',
) {
    package {'grub':}
    package {'os-prober':}
    file { '/etc/default/grub':
        require => Package['grub', 'os-prober'],
        content => template('base/grub/grub.erb'),
        notify  => Exec['grub-mkconfig'],
    }
    file { '/boot/grub/os1_wide.jpg':
        require => Package['grub', 'os-prober'],
        source  => 'puppet:///modules/base/grub/os1_wide.jpg',
        notify  => Exec['grub-mkconfig'],
    }
    exec { 'grub-mkconfig':
        command => shellquote(
            '/usr/bin/env', 'grub-mkconfig',
            '-o', '/boot/grub/grub.cfg'
        ),
        refreshonly => true,
        require     => Package['grub'],
    }
}
