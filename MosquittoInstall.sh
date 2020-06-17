#! /bin/bash sh


echo "Intall Mosquitto server"

echo "Descarga de la we"
sudo wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key

echo "Add clave de lista de autenticacion"
sudo apt-key add mosquitto-repo.gpg.key

cd /etc/apt/sources.list.d/

echo "Descarga lista de repositorios "

 sudo wget http://repo.mosquitto.org/debian/mosquitto-buster.list 

 sudo -i 

 apt-get update -y

echo "Instalar mosquitto"

apt-get install mosquitto

echo "Intalar clientes"

apt-get install mosquitto-clients -y
