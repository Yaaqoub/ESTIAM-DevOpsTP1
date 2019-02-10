FROM ubuntu

RUN apt-get update
RUN apt-get install --yes curl gnupg
RUN curl --silent --location https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

RUN apt-get install -y mysql-server
RUN apt-get install -y mysql-client

COPY . /src
WORKDIR /src

RUN cd /src;npm install

RUN chmod +x /src/installer.sh && chown 700 /src/installer.sh

EXPOSE 80

ENTRYPOINT ["/src/installer.sh"]