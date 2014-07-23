class desktop::laptop {
    systemd_service {'laptop-mode':
        require => Package['laptop-mode-tools']
    }
    package {'xf86-input-mtrack-git':}
    
    $iwscripts = [
        '.bin/iwstart',
        '.bin/iwstop',
        '.bin/iwrestart'
    ]
    enduser_file { $iwscripts:
        source => 'desktop/laptop',
        mode    => '0744'
    }
}
