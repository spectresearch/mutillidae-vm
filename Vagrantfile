VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.berkshelf.enabled = true

  config.vm.network :forwarded_port, guest: 80, host: 4000
  config.vm.network :private_network, ip: "192.168.56.10"

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      "mysql" => {
        "server_root_password" => "",
        "server_repl_password" => "",
        "server_debian_password" => ""
      },
      "apache" => {"default_site_enabled" => true}
    }

    chef.run_list = [
      #Mutillidae
      "recipe[apt::default]",
      "recipe[mysql::server]",
      "recipe[apache2::mod_php5]",
      "recipe[php]",
      "recipe[php::module_mysql]",
      "recipe[mutillidae::default]",
      #Tools
      "recipe[tools::default]",
    ]
  end

end
