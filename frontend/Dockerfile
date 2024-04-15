FROM ubuntu:20.04

RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y gnupg curl

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -

RUN apt-get install -y nodejs

RUN npm install -g sails

WORKDIR /app

COPY . .

CMD ["sails", "lift", "--verbose"]