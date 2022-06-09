#!/bin/bash

apt update -y

apt install openjdk-18-jre-headless -y
apt install maven -y
git clone https://github.com/Varma-PA/EDatabaseSpringboot.git
cd EDatabaseSpringboot
mvn clean install
mvn compile
mvn package 
java -jar target/emp-database.jar
