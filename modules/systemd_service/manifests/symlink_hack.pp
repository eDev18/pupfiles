class systemd_service::symlink_hack {
    if ! defined(Package['systemd']) {
        package {'systemd':}
    }
}
