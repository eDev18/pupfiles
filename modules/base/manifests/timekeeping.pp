class base::timekeeping {
    package { 'ntp': }
    service { 'ntpd':
        enable  => true,
        require => Package[ 'ntp' ],
    }
}
