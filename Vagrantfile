# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "trusty64"

  config.vm.provider:virtualbox do |vb|
    vb.name = "Retrosheet MySQL Database"
    vb.customize ["modifyvm",:id,"--memory",2048]
  end
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  # config.ssh.forward_agent = true

end
