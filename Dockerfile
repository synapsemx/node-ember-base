# 1: Using node:alpine as the base
FROM node:8.12.0-alpine

# 2: Setting the application path to our work dir
WORKDIR /usr/app

# 3: We'll add the app's binaries path to $PATH:
ENV PATH=/usr/app/bin:$PATH

# 4: Install ember-cli and friends:
RUN set -ex \
  && npm install -g ember-cli@2.18.2 \
  && npm install -g bower@1.7.9 \
  && npm install -g check-dependencies

# 5: Install git and yarn
RUN apk add git yarn

# 6: Make it so we can run bower as root
RUN echo '{ "allow_root": true }' > /root/.bowerrc
