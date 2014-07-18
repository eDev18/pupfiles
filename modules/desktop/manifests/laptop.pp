class desktop::laptop (
    $desktop_environment = 'kde'
) {
    systemd_service {'laptop-mode':
        require => Package['laptop-mode-tools']
    }
    package {'xf86-input-mtrack-git':}
}
