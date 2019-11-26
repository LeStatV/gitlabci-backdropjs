FROM backstopjs/backstopjs:4.3.4
RUN apt-get -qqy update \
  && apt-get update \
  && apt-get -qqy --no-install-recommends install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
  && curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - \
  && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
  && apt-get update \
  && apt-get -qqy install docker-ce docker-ce-cli \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get -qyy clean;
