for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
y
sudo docker run hello-world
sudo apt list --installed |grep docker
id
sudo usermod -a -G docker vagrant
exit
vagrant ssh
id
sudo systemctl enable --now docker
sudo systemctl status docker
:q
mkdir appHomeBanking
cd appHomeBanking
touch index.html contacto.html
nano index.html
nano contacto.html
docker login -u nachoar12
cd ..
cd UTN-FRA_SO_Docker/
cd ejemplo2/
cd ..
mv appHomeBanking/ UTN-FRA_SO_Docker/ejemplo2/
cd UTN-FRA_SO_Docker/ejemplo2/
docker build -t nachoar12/2parcial-ayso:v1.0 .
docker push nachoar12/2parcial-ayso:v1.0
docker run -d -p 8080:80 nachoar12/2parcial-ayso:v1.0
192.168.56.5:80/index.html
192.168.56.5:80/contacto.html
