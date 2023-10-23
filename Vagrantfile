Vagrant.configure("2") do |config|
    servers=[

	
        {
            :hostname => "VM1",
            :box => "bento/ubuntu-22.04",
            :ip => "172.16.2.60",
            :ssh_port => '2210'
          },
          {
            :hostname => "VM2",
            :box => "bento/ubuntu-22.04",
            :ip => "172.16.2.61",
            :ssh_port => '2220'
          },
          {
            :hostname => "VM3",
            :box => "bento/ubuntu-22.04",
            :ip => "172.16.2.62",
            :ssh_port => '2230'
          }
	

      ]

    servers.each do |machine|
        config.vm.define machine[:hostname] do |node|
            node.vm.box = machine[:box]
            node.vm.hostname = machine[:hostname]
            node.vm.network :private_network, ip: machine[:ip]
            node.vm.network "forwarded_port", guest: 22, host: machine[:ssh_port], id: "ssh"
            node.vm.provider :virtualbox do |vb|
                vb.name = "#{machine[:hostname]}_vm"
                vb.customize ["modifyvm", :id, "--memory", 2024]
                vb.customize ["modifyvm", :id, "--cpus", 2]
                vb.customize ["createhd", "--filename", "#{machine[:hostname]}_vm_1.vdi", "--size", "12480"]
                

                if machine[:hostname] == "VM1"
                    vb.customize ["modifyvm", :id, "--memory", 8024]
                    vb.customize ["modifyvm", :id, "--cpus", 4]
                end



            end
        end
    end
end