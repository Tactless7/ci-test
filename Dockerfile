FROM circleci/node:latest

# NPM setup
WORKDIR /src

# Front setup
COPY package.json package.json
RUN sudo npm install

COPY . /src

RUN sudo npm run build

EXPOSE 80 443

CMD [ "npm", "run", "start" ]
