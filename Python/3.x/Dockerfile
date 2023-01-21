FROM python:3
ARG UserName
ARG UID
ARG GID

WORKDIR /usr/src/app

RUN id -g ${GID} &>/dev/null || groupadd -g ${GID} ${UserName}
RUN id -u ${UID} &>/dev/null || useradd useradd -m -u ${UID} -g ${GID} -s /bin/bash ${UserName}

USER ${UID}

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN python --version
