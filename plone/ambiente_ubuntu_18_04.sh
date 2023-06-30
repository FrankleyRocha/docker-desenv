#!/bin/bash

apt update
apt install -y \
        build-essential \
        zlib1g-dev \
        libncurses5-dev \
        libgdbm-dev \
        libnss3-dev \
        libssl-dev \
        libreadline-dev \
        libffi-dev \
        wget \
        curl \
        git \
        libbz2-dev \
        libsqlite3-dev \
        liblzma-dev

useradd --create-home plone
echo "plone:plone" | chpasswd
usermod -aG sudo plone

su - plone

curl https://pyenv.run | bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

source ~/.bashrc

pyenv install 3.10.12
pyenv global 3.10.12

nvm install 16
npm i -g yo
npm i -g yarn
