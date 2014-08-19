class { 'base':
    grub_resolution => '1366x768,auto',
}

class { 'base::ian': }

class { 'console': }

class { 'desktop':
    laptop           => true,
    graphics_drivers => 'intel',
}
