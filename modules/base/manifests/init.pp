class base (
    $grub_resolution = 'auto',
    $networking      = true,
) {
    class { 'base::grub':
        grub_resolution => $grub_resolution,
    }
    include base::grub
    include base::root
    include base::nobeep
    include base::packaging
    include base::timekeeping
    include base::sudo
    include base::filesystem
    include base::python
    if $networking {
        include base::networking
    }
}
