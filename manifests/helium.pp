class { 'base':
    grub_resolution => '2560x1440,1024x768,auto',
}

class { 'base::indiv0': }

class { 'console': }

class { 'desktop':
    graphics_drivers => 'nvidia',
    games            => true,
}
