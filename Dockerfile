FROM circleci/node:7.10

# NPM setup
WORKDIR /src

# Front setup
COPY package.json package.json
RUN npm install

RUN ls
RUN ls /src
COPY . /src

RUN npm run build

EXPOSE 80 443

CMD [ "npm", "run", "start" ]
