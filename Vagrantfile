# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  #config.vm.box = "ubuntu/precise64"
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end

  config.vm.hostname = 'graphite.local'
  config.vm.network 'private_network', ip: '10.55.55.105'

  config.vm.provision 'bootstrap',
    type: "shell",
    path: "tests/setup.sh",
    keep_color: true
  config.vm.provision 'ansible',
    type: "shell",
    inline: "PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true ansible-playbook /vagrant/tests/test.yml -i /vagrant/tests/inventory --connection=local --sudo",
    keep_color: true

end
