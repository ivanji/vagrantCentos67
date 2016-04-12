Vagrant.configure(2) do |config|
  config.vm.box = "vagrant-centos-6.7.box"
  config.vm.box_url = "https://github.com/CommanderK5/packer-centos-template/releases/download/0.6.7/vagrant-centos-6.7.box"
  
  
  config.vm.provision "shell", path: "provision.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8080, id: "nginx"
end
