# install curl
package "curl"

# Hit our network on port 2424 to kick off the quake
execute "curl `curl http://icanhazip.com`:2424/quake"
