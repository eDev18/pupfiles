class { 'base::indiv0': }

class { 'console': }

class { 'desktop':
    graphics_drivers => 'nvidia',
    games            => true,
}
