# Add the VirtualBox sources
execute "echo 'deb http://download.virtualbox.org/virtualbox/debian lucid contrib' | sudo tee -a /etc/apt/sources.list"
execute "apt-get update"

# Install VirtualBox. Like a boss.
package "virtualbox-4.0" do
  options "--allow-unauthenticated"
end

# Install Vagrant within Vagrant.
# motherfuckers.
gem_package "vagrant"

# We're going to do a second Vagrant in /go-deeper
directory "/go-deeper" do
  action :create
end

# Copy over the #NewVagrant config files to /go-deeper
execute "cp -R /vagranception/2-vagrant/* /go-deeper"

# Import the box we pre-downloaded which is in our shared folder as "boxes"
execute "vagrant box add base /vagranception/boxes/lucid32.box"

# Spin up #NewVagrant
execute "vagrant up" do
  cwd "/go-deeper"
end
