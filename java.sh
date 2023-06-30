#!/bin/bash
#update the local repo
sudo apt update -y
#installing default jre
sudo apt-get install default-jre -y
#installing default jdk
sudo apt-get install default-jdk -y
#set the java path
java_path=$(readlink -f /usr/bin/java)
#printing the java home 
echo "JAVA_HOME=$java_path" | sudo tee -a /etc/environment
source /etc/environment
