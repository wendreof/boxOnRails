# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "box-on-rails"

   config.vm.network "forwarded_port", guest: 3000, host: 3000, auto_correct: true
   
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "projects/", "/var/www", owner: "www-data", group: "www-data", mount_options: ['dmode=777','fmode=666']

  config.vm.provider "virtualbox" do |machine|
    machine.memory = 1024
    machine.cpus = 1
    machine.name = "box-on-rails"
  end

   config.vm.provision :shell, path: "install.sh", keep_color: true
   config.vm.provision :shell, path: "install-rvm.sh", args: "stable", privileged: false
   config.vm.provision :shell, path: "install-ruby.sh", args: "2.3.4", privileged: false
   config.vm.provision :shell, path: "install-ruby.sh", args: "2.4.1 rails haml", privileged: false
end
