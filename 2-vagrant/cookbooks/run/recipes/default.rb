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
