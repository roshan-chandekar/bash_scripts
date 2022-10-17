#!/bin/bash


****************************************************************************************
*                           Jenkins Installation                                       *
****************************************************************************************

****************************************************************************************
*                           Jenkins GPG Key Install                                    *
****************************************************************************************
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
  
****************************************************************************************
*                           Adding debian packages to repo                             *
****************************************************************************************  
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null   

****************************************************************************************
*                           Updating the database                                      *
****************************************************************************************  
sudo apt-get update

****************************************************************************************
*                           JAVA 11 Installation                                        *
****************************************************************************************

sudo apt install java-openjdk11 -y

****************************************************************************************
*                           Jenkins Installation                                       *
****************************************************************************************
sudo apt-get install jenkins -y

****************************************************************************************
*                           Jenkins Service Status                                     *
****************************************************************************************
sudo systemctl status jenkins
****************************************************************************************
*                           Jenkins is Ready to Serve as CI/CD                         *
****************************************************************************************



