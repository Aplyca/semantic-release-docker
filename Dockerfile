FROM node:alpine

LABEL Mauricio Sanchez <msanchez@aplyca.com>

RUN apk --update --no-cache add git openssh

RUN npm install -g semantic-release @iteratec/semantic-release-bitbucket @semantic-release/gitlab @semantic-release/changelog @semantic-release/git && \
    npm cache clean --force
