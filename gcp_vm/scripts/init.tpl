
!/bin/bash

# Install docker
apt-get update
apt-get install -y apt-transport-https ca-certificates curl software-properties-common  gnupg-agent
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce  docker-ce-cli containerd.io
usermod -aG docker ubuntu

# Install docker-compose if needed
curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

