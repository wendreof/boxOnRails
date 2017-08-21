# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "box-on-rails"

   config.vm.network "forwarded_port", guest: 3000, host: 3000, auto_correct: true
   
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provider "virtualbox" do |machine|
    machine.memory = 1024
    machine.cpus = 1
  end

   config.vm.provision "shell", path: "install.sh", keep_color: true #setup
end
