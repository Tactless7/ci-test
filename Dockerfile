FROM circleci/node:7.10

# NPM setup
WORKDIR /src

# Front setup
COPY package.json package.json
RUN npm install

COPY . /src

RUN npm run build

EXPOSE 8080

CMD [ "npm", "run serve" ]
