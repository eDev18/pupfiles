class { 'base::indiv0': }

class { 'console': }

class { 'desktop':
    laptop           => true,
    graphics_drivers => 'intel',
}

network_interface { $ethernet_macaddress:
    rename       => 'wired0',
    macspoof     => [ 'wired_laptop', ],
    ipv6_privacy => true,
}

network_interface { $wifi_macaddress:
    rename       => 'wifi0',
    macspoof     => [ 'wireless_laptop', 'wireless_usb', ],
    ipv6_privacy => true,
}

