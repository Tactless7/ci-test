FROM circleci/node:7.10

# install simple http server for serving static content
RUN npm install -g http-server

# NPM setup
WORKDIR /src

# Front setup
COPY package.json package.json
RUN npm install

COPY . /src

RUN npm run build

EXPOSE 8080

CMD [ "http-server", "dist" ]
