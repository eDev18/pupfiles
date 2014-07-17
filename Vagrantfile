# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    # The box to build off of.
    config.vm.box = "mschulze/arch-mini-i386"

    # Virtualbox-specific configuration:
    config.vm.provider "virtualbox" do |vb|
        # Don't boot with headless mode
        vb.gui = true

        # Use VBoxManage to change memory:
        vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
end
