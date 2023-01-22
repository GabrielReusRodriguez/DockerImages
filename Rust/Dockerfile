FROM rust
ARG UserName=usuario
ARG UserGroup=grupo

WORKDIR /usr/src/app

RUN groupadd ${UserGroup}
RUN useradd -m -g ${UserGroup} -s /bin/bash ${UserName}
USER  ${UserName}

RUN rustc --version
RUN cargo --version