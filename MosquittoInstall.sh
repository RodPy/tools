#! /bin/bash sh


echo "Intall Mosquitto server"

echo "Descarga de la we"
sudo wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key

echo "Add clave de lista de autenticacion"
sudo apt-key add mosquitto-repo.gpg.key

cd /etc/apt/sources.list.d/

echo "Descarga lista de repositorios "

 sudo wget http://repo.mosquitto.org/debian/mosquitto-buster.list 

 
echo "Actualizar Repo "
sudo apt-get update -y

echo "Instalar mosquitto"

sudo apt-get install mosquitto -y

echo "Intalar clientes"

sudo apt-get install mosquitto-clients -y
