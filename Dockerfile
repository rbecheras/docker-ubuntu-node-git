#
# ubuntu-node-git Dockerfile
# An git development ditribution of Ubuntu-Node
#
# See https://hub.docker.com/r/rbecheras/ubuntu-node-git
#
#     docker pull rbecheras/ubuntu-node-git
#
FROM rbecheras/ubuntu-node:18.04-8
LABEL Author="Rémi Becheras <remi.becheras@gmail.com>"

USER 0
# Install Node.js, Yarn and required dependencies
RUN apt-get update \
  && apt-get install -y curl gnupg build-essential \
  && curl --silent --location https://deb.nodesource.com/setup_8.x | bash - \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get remove -y --purge cmdtest \
  && apt-get update \
  && apt-get install -y nodejs yarn git \
  # remove useless files from the current layer
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/lib/apt/lists.d/* \
  && apt-get autoremove \
  && apt-get clean \
  && apt-get autoclean

USER 1000
WORKDIR /home/node
CMD ["node"]