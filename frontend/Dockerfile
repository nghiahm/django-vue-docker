FROM node:current-alpine

WORKDIR /usr/src/frontend

COPY package*.json /usr/src/frontend

RUN npm install

COPY . .

# CMD [ "npm", "run", "dev", "--", "--host", "localhost"]
CMD [ "npm", "run", "dev"]