FROM node 
ARG UserName=usuario
ARG GroupName=grupo
ARG UserId
ARG GroupId

#Se crea el grupo y el usuario SOLO en caso que el id de grupo y usuario NO existan en el docker.
RUN id -g ${GroupId} &>/dev/null ||  groupadd -g ${GroupId} ${GroupName}
RUN id -u ${UserId} &>/dev/null || useradd ${UserName} -u ${UserId} -m -g ${GroupId} -s /bin/bash 

RUN node --version
#Actualizamos a la ultima versión de npm.
RUN npm install npm@latest -g

#Instalamos  la herramienta create-react-app
RUN npm install -g create-react-app

WORKDIR /usr/src/app

USER  ${UserName}

RUN create-react-app --version