sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d '=' -f 2) stable"
sudo apt-key fingerprint 0EBFCD88
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt-get install git-all
# azureuser is your user name
sudo usermod -aG docker -a kgbcwebdev
newgrp docker
echo "------------------ groups has docker ------------------"
groups
echo "------------------ groups has docker  End ------------------"
sudo systemctl start docker
sudo docker run hello-world
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "------------------ git ------------------"
git --version
echo "------------------ git End ------------------"
echo "------------------ docker-compose  ------------------"
docker-compose --version
echo "------------------ docker-compose End ------------------"
echo "------------------ docker ------------------"
docker version
echo "------------------ docker End ------------------"