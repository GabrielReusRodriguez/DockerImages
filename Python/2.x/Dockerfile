FROM python:2
ARG UserName=usuario
ARG UserGroup=grupo

WORKDIR /usr/src/app

RUN groupadd ${UserGroup}
RUN useradd -m -g ${UserGroup} -s /bin/bash ${UserName}
USER  ${UserName}

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN python --version
