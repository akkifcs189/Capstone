FROM node:9

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app


# install and cache app dependencies
COPY package.json /usr/src/app
RUN npm install

# add app
COPY . /usr/src/app

EXPOSE 4200
CMD ["npm", "start"]
