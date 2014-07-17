class { 'base::indiv0': }

class { 'console': }

class { 'desktop':
    graphics_drivers => 'nvidia',
    games            => true,
    dpi              => 102,
}

network_interface { $ethernet_macaddress:
    rename       => 'wired0',
    macspoof     => false, # Desktop machine, not much risk
    ipv6_privacy => true
}
