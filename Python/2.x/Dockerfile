FROM python:2
ARG UserName=usuario
ARG GroupName=grupo
ARG UserId
ARG GroupId

#Se crea el grupo y el usuario SOLO en caso que el id de grupo y usuario NO existan en el docker.
RUN id -g ${GroupId} &>/dev/null ||  groupadd -g ${GroupId} ${GroupName}
RUN id -u ${UserId} &>/dev/null || useradd ${UserName} -u ${UserId} -m -g ${GroupId} -s /bin/bash 

WORKDIR /usr/src/app


COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

USER  ${UserId}

RUN python --version
