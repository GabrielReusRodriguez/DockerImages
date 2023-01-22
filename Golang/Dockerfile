FROM golang 
ARG UserName=usuario
ARG UserGroup=grupo

WORKDIR /usr/src/app

#RUN id -g ${GID} &>/dev/null || groupadd -g ${GID} ${UserName}
#RUN id -u ${UID} &>/dev/null || useradd -m -u ${UID} -g ${GID} -s /bin/bash ${UserName}

#RUN id -g ${UserName} &>/dev/null || groupadd ${UserName}
#RUN id -u ${UserName} &>/dev/null || useradd -m -g ${UserName} -s /bin/bash ${UserName}

RUN groupadd ${UserGroup}
RUN useradd -m -g ${UserGroup} -s /bin/bash ${UserName}
USER  ${UserName}

RUN go version
