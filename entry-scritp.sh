 #!/bin/bash
 sudo apt-get remove docker docker-engine docker.io
  sudo apt-get update
  sudo apt install docker.io
  sudo snap install docker
  udo docker run hello-world
  sudo docker images
  sudo systemctl start docker
  sudo docker ps -a
  sudo docker ps
  sudo usermod -aG docker ec2-user
  docker run -p 8080:80 ngnix
  
  # install jenkins
  sudo apt update
  sudo apt install openjdk-11-jdk
  wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
  sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
  sudo apt update
  sudo apt install jenkins
  
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9B7D32F2D50582E6
  systemctl status jenkins