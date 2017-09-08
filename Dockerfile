FROM node:6.9.1


RUN apt-get -y update && \
    apt-get install -y git wget curl figlet unzip ruby ruby-dev build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN gem install sass -v 3.4.25

ENV IONIC_VERSION=3.9.2
# install ionic
RUN npm install -g ionic@"$IONIC_VERSION" && \
    npm install -g @ionic/app-scripts@latest && \
    npm install -g --progress=false typescript@2.1.4 && \
    ionic config --no-interactive set -g daemon.updates false && \
    npm cache clear --force
