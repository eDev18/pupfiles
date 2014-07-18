class desktop::xorg {
    package { 'xorg-server': }
    package { 'xorg-xinit': }
    package { 'xorg-xsetroot': } # Provides `xsetroot` command.
}
