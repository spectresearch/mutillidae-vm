include_recipe "git"

#Install mutillidae
git "/var/www/mutillidae" do
  repository "git://git.code.sf.net/p/mutillidae/git"
  reference "master"
  action :sync
  not_if 'stat /var/www/mutillidae'
end