Vagrant.configure("2") do |config|
	config.ssh.insert_key = false
	config.ssh.forward_agent = true
	config.ssh.forward_x11 = true
	config.vm.network "private_network", ip: "192.168.121.240"

	config.vm.define "node" do |node|
		node.vm.box = "almalinux/9"
		node.vm.hostname = "openvpn"
		node.vm.provider :libvirt do |libvirt|
			libvirt.cpus = 2
			libvirt.memory = 4098
		end

		node.vm.provision "shell", 
			inline: " \
				sudo dnf update -y && \
				sudo dnf install epel-release -y && \
				sudo dnf install openvpn -y && \
				sudo cp -rf /vagrant/.ssh/* /home/vagrant/.ssh && \ 
				sudo chown -R vagrant /home/vagrant/.ssh && \ 
				sudo chmod -R u=rwX,g=,o= /home/vagrant/.ssh && \
				sudo dnf install firefox -y && \
				sudo systemctl set-default graphical.target && \
				sudo systemctl default && \
				sudo dnf --enablerepo=epel -y install xrdp && \
				sudo systemctl enable xrdp --now && \
				sudo chcon --type=bin_t /usr/sbin/xrdp && \
				sudo chcon --type=bin_t /usr/sbin/xrdp-sesman && \
				sudo dnf install lightdm -y && \
				sudo systemctl enable lightdm				
			"

	end

end
