class console::htop {
    package { 'htop': }

    enduser_file { '.config/htop/htoprc':
        source  => 'console/htop',
        require => Package[ 'htop' ]
    }
}
