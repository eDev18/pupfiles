class console::scripts {
    enduser_file { '.bin':
        ensure  => directory,
        source  => 'console/scripts',
        mode    => '0744',
        recurse => true
    }
}
