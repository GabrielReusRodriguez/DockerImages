FROM node 
ARG UserName=usuario
ARG UserGroup=grupo

RUN groupadd ${UserGroup}
RUN useradd -m -g ${UserGroup} -s /bin/bash ${UserName}

WORKDIR /usr/src/app

RUN chown ${UserName}:${UserGroup}  /usr/src/app

RUN node --version

#Actualizamos a la ultima versión de npm.
RUN npm install npm@latest -g

#Instalamos  la herramienta create-react-app
RUN npm install -g create-react-app

USER  ${UserName}
RUN create-react-app --version
