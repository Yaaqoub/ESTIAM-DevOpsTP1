FROM ubuntu

RUN apt-get update
RUN apt-get install --yes curl gnupg
RUN curl --silent --location https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

RUN apt-get install -y mysql-server
RUN apt-get install -y mysql-client

#RUN mkdir -p /home/node/app/node_modules //mysql -u root < /starter.sql
#WORKDIR /home/node/app
#COPY package*.json ./

COPY . /src
WORKDIR /src

RUN cd /src;npm install

#EXPOSE 8080

RUN chmod +x /src/installer.sh && chown 700 /src/installer.sh

EXPOSE 80

ENTRYPOINT ["/src/installer.sh"]
#CMD sudo ./installer.sh