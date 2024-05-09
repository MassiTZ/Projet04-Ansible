# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "ubuntu/jammy64"
    ansible.vm.hostname = "ansible" 
    ansible.vm.network "private_network", ip: "192.168.56.30"
    ansible.vm.synced_folder "projet", "/home/vagrant/projet"
    ansible.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 2
      vb.name = "ansible"
    end
    ansible.vm.provision "shell", path: "setup-hosts.sh"
    ansible.vm.provision "shell", path: "install-ansible.sh"
  end

  (1..3).each do |i|
    config.vm.define "vmw0#{i}" do |node|
      node.vm.box = "ubuntu/jammy64"
      node.vm.hostname = "vmw0#{i}"
      node.vm.network "private_network", ip: "192.168.56.3#{i}"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = 2048
        vb.cpus = 2
        vb.name = "vmw0#{i}"
      end
      node.vm.provision "shell", path: "setup-hosts.sh"
    end  
  end  

end 

