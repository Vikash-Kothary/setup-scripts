# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2")  do |config|
  
  config.vm.define "home" do |home_server|
    home_server.vm.box = "ubuntu/trusty64"
    home_server.vm.hostname = "home"
    home_server.vm.network :private_network, ip: "127.0.0.1"
    home_server.vm.network "forwarded_port", guest: 8080, host: 8080
    home_server.vm.provider :virtualbox do |vb|
      vb.memory = 1024
    end
    home_server.vm.synced_folder "playbook/", "/setup-scripts"
    home_server.vm.provision "ansible" do |ansible|
      ansible.inventory_path="playbook/inventory"
      ansible.playbook = "playbook/main.yml"
      ansible.groups = {
        "home_server" => ["home"]
      }
      ansible.tags="install"
      ansible.verbose = "vvvv"
      # Disable default limit to connect to all the machines
      ansible.limit = "all"
    end
  end
  
end