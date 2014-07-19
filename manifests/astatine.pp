class { 'base':
    grub_resolution => '1024x768,auto',
}

class { 'base::indiv0': }

class { 'console': }

class { 'desktop':
    laptop           => true,
    graphics_drivers => 'intel',
    tex              => true,
}
