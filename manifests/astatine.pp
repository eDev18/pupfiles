class { 'base::indiv0': }

class { 'console': }

class { 'desktop':
    laptop           => true,
    graphics_drivers => 'intel',
}
