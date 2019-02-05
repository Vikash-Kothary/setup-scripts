# # -*- mode: ruby -*-
# # vi: set ft=ruby :

Vagrant.configure("2")  do |config|
  
  config.vm.define "testing" do |testing_server|
    app_server.vm.box = "ubuntu/trusty64"
    app_server.vm.hostname = "testing"
    app_server.vm.network :private_network, ip: "127.0.0.2"
    app_server.vm.network "forwarded_port", guest: 8080, host: 8080
    app_server.vm.provider :virtualbox do |vb|
      vb.memory = 4096
    end
    app_server.vm.synced_folder "setup-scripts/", "/setup-scripts"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "setup-scripts/provision.yml"
    ansible.groups = {
      "testing_server" => ["testing"]
    }
    ansible.verbose = "vvvv"
    # Disable default limit to connect to all the machines
    ansible.limit = "all"
  end
end