#/usr/bin/bash

# Referencia... https://docs.docker.com/engine/install/ubuntu/

echo "Docker installer basado en https://docs.docker.com/engine/install/ubuntu/"

#1. Primero desintalar versiones antiguas...
sudo apt-get remove docker docker-engine docker.io containerd runc

#2. Actualizo los repositorios APT-get
sudo apt-get update

#3. Permito a apt-get utilizar https.
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


#4. Añado la key GPG oficial a la lista de aceptadas
#mkdir -p hace que no salte error si  ya existe y ademas fuerza a crear la estructura de directorios
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
#Nos aseguramos de ponerle los pèrmisos adecuados
sudo chmod a+r /etc/apt/keyrings/docker.gpg

#5. Establecemos el repositorio
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null



#6. Instalar el engine de docker
#Actualizamos el apt-get
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

#Añadimos el usuario al grupo docker  para que no de el error de permisos del socket.
#Creamos el grupo docker
sudo groupadd docker
sudo usermod -aG docker ${USER}
#su -s ${USER}

#Verificamos la instalacion con una imagen helloworld
 sudo docker run hello-world 
