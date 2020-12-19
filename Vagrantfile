servers=[
  {
    :hostname => "node-1",
    :ip => "192.168.56.15",
    :box => "ubuntu/xenial64",
    :ram => 750,
    :cpu => 2
  },
  {
    :hostname => "node-2",
    :ip => "192.168.56.16",
    :box => "ubuntu/xenial64",
    :ram => 750,
    :cpu => 2
  },
  {
    :hostname => "node-3",
    :ip => "192.168.56.17",
    :box => "ubuntu/xenial64",
    :ram => 750,
    :cpu => 2
  },
    {
    :hostname => "node-4",
    :ip => "192.168.56.18",
    :box => "ubuntu/xenial64",
    :ram => 750,
    :cpu => 2
  },
    {
    :hostname => "node-5",
    :ip => "192.168.56.19",
    :box => "ubuntu/xenial64",
    :ram => 750,
    :cpu => 2
  }
]
Vagrant.configure(2) do |config|
  servers.each do |machine|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network "private_network", ip: machine[:ip]
      node.vm.provision "docker"
      node.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", machine[:ram]]
      end
    end
  end
end