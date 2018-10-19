FROM circleci/node:7.10

# NPM setup
WORKDIR /src

# Front setup
COPY package.json package.json
RUN sudo npm install

COPY . /src

RUN npm run build

EXPOSE 80 443

CMD [ "npm", "run", "start" ]
