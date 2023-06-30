#!/bin/bash

sudo apt-get update -y
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y

java_path=$(readlink -f /usr/bin/java)
echo "JAVA_HOME=$java_path" | sudo tee -a /etc/environment

source /etc/environment
