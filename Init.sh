#! /bin/bash

sudo apt update

sudo apt upgrade

sudo apt install openjdk-17-jdk -y

java -version
# openjdk version "17.0.13" 2024-10-15
# OpenJDK Runtime Environment (build 17.0.13+11-Debian-2)
# OpenJDK 64-Bit Server VM (build 17.0.13+11-Debian-2, mixed mode, sharing)

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
  
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get install jenkins -y

systemctl start jenkins

systemctl enable jenkins
