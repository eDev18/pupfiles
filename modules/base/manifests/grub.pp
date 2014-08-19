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
    file { '/boot/grub/bridges.jpg':
        require => Package['grub', 'os-prober'],
        source  => 'puppet:///modules/base/grub/bridges.jpg',
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
