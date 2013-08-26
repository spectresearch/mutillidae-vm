include_recipe "git"

install_path = "/home/vagrant"

#Install burpsuite
remote_file "#{install_path}/burpsuite_free_v1.5.jar" do
  source "http://portswigger.net/burp/burpsuite_free_v1.5.jar"
  not_if 'stat #{install_path}/burpsuite_free_v1.5.jar'
end

#Install sqlmap
git "#{install_path}/sqlmap" do
  repository "https://github.com/sqlmapproject/sqlmap.git"
  reference "master"
  action :sync
  not_if 'stat #{install_path}/sqlmap'
end

#Install an X desktop
package "xfce4" do
  action :install
end

package "gdm" do
  action :install
end

#Install firefox
package "firefox" do
  action :install
end

#Configure keyboard
bash "set_keymap" do
  code <<-EOH
  echo "setxkbmap -layout es" >> #{install_path}/.bashrc
  EOH
  not_if 'grep setxkbmap #{install_path}/.bashrc'
end
