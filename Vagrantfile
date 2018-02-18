Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"

  config.vm.define "server" do |server|
	  server.vm.hostname ="server"
	  server.vm.network "private_network", ip: "192.168.20.2"
	  server.vm.network "private_network", ip: "10.0.10.10", virtualbox__intnet: "server"
	  server.vm.provider :virtualbox do |vb|
          	vb.customize ["modifyvm", :id, "--memory", "2048"]
          	vb.customize ["modifyvm", :id, "--cpus", "2"]
	  end
  end

  config.vm.define "client" do |client|
	 client.vm.hostname="client"
	 client.vm.network "private_network", ip: "192.168.20.3"
	 client.vm.network "private_network", ip: "10.0.20.10", virtualbox__intnet: "client"
  end
end
