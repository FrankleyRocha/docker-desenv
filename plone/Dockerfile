FROM ubuntu:18.04

#ENV BASH_ENV "~/.profile"
SHELL ["/bin/bash", "-ic"]

RUN apt update
RUN apt install -y \
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

RUN useradd --create-home plone
RUN echo "plone:plone" | chpasswd
RUN usermod -aG sudo plone

USER plone

RUN curl https://pyenv.run | bash
RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

RUN pyenv install 3.10.12
RUN pyenv global 3.10.12

RUN echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> ~/.bashrc

RUN nvm install 16
RUN npm i -g yo
RUN npm i -g yarn

RUN pip install cookiecutter
