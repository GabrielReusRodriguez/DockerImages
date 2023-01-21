FROM rust
ARG UserName
ARG UID
ARG GID

#VOLUME ["/usr/src/myapp"]

WORKDIR /usr/src/myapp


#RUN groupadd -g ${GID} ${UserName}
#RUN useradd -m -u ${UID} -g ${GID} -s /bin/bash ${UserName}
#USER ${UserName}

RUN id -g ${GID} &>/dev/null || groupadd -g ${GID} ${UserName}
RUN id -u ${UID} &>/dev/null || useradd useradd -m -u ${UID} -g ${GID} -s /bin/bash ${UserName}

USER ${UID}

RUN rustc --version
RUN cargo --version