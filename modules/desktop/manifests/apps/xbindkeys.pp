class desktop::apps::xbindkeys {
    package{'xbindkeys':}
    package{'pamixer':}
    enduser_file { '.xbindkeysrc':
        ensure  => present,
        mode    => 0700,
        source  => 'desktop/apps/xbindkeys',
        require => Package['xbindkeys']
    }
}
