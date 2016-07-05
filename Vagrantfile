Vagrant.configure(2) do |config|
  config.vm.define "jmaster" do |jmaster|
    jmaster.vm.box = "ubuntu/trusty64"
    jmaster.vm.hostname = "jenkins-dev"
    jmaster.vm.provision "shell", path: "provision.sh"
    jmaster.vm.network "private_network", ip: "192.168.50.50"
    jmaster.vm.network :forwarded_port, guest: 8080, host: 8080
  end

  config.vm.define "jnode" do |jnode|
    jnode.vm.box = "ubuntu/trusty64"
    jnode.vm.hostname = "jenkins-dev"
    jnode.vm.provision "shell", path: "provision.sh"
    jnode.vm.network "private_network", ip: "192.168.50.60"
  end
end
