FROM node:14.16

RUN mkdir /usr/src/app
WORKDIR /usr/src/app/server
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY . /usr/src/app/server
RUN npm install


EXPOSE 8001

CMD ["npm","run","dev"]