FROM node 
ARG UserName=gabriel
ARG UID=1000
ARG GID=1000

WORKDIR /usr/src/myapp
VOLUME ["/usr/src/myapp"]

#RUN groupadd -g ${GID} ${UserName}
#RUN useradd -m -u ${UID} -g ${GID} -s /bin/bash ${UserName}
RUN id -g ${GID} &>/dev/null || groupadd -g ${GID} ${UserName}
RUN id -u ${UID} &>/dev/null || useradd useradd -m -u ${UID} -g ${GID} -s /bin/bash ${UserName}

USER ${UID}

RUN node --version
