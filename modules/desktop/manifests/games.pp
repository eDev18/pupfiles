class desktop::games {
    package {'wine':}
    package {'wine_gecko':
        require => Package['wine']
    }
    package {'winetricks':
        require => Package['wine']
    }
}
