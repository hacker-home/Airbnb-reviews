FROM node:10.13-alpine
ENV NODE_ENV production

RUN mkdir -p /src/app

WORKDIR /src/app

COPY . /src/app

RUN npm install

EXPOSE 3004

CMD [ "npm", "run", "review-server" ]