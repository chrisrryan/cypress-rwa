FROM node:16-alpine

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

RUN apk -U upgrade && apk add --no-cache git openssh
	
RUN git clone https://github.com/cypress-io/cypress-realworld-app.git 

WORKDIR /cypress-realworld-app

RUN yarn install
CMD [ "yarn", "dev" ]