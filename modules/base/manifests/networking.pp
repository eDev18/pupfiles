class base::networking {
    package {'dnsutils':} # dig
    package {'net-tools':} # netstat
    package {'openbsd-netcat':} # netcat
    package {'iputils':} # ping
    package {'traceroute':}
    package {'openssh':}
    package {'rsync':}
    package {'nmap':}
    include private::base::networking::hosts
}
