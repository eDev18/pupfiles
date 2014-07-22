class console::scripts {
    enduser_file { '.bin':
        ensure  => directory,
        source  => 'console/scripts',
        recurse => true
    }
}
