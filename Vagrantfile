# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/buster64"
  config.vm.provider "libvirt" do |vb|
  config.ssh.insert_key = false
  config.disksize.size = '15GB'
  config.vm.synced_folder ".", "/vagrant", disabled: true
  vb.memory = "1024"

  end

  config.vm.define "comodo" do |app|
    app.vm.hostname = "comodo"
    app.vm.network :private_network, type: "dhcp" 
    config.vm.network :public_network, type: "dhcp"
  end
 
end
