FROM node:alpine

LABEL Mauricio Sanchez <msanchez@aplyca.com>

RUN apk --update --no-cache add git openssh && \
    npm i -g semantic-release --ignore-scripts && \
    npm i -g @semantic-release/gitlab @semantic-release/changelog @semantic-release/git && \
    cd /usr/local/lib/node_modules/semantic-release/node_modules/parse-domain && \
    npm run postinstall
