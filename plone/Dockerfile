FROM ubuntu:18.04

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

ADD ambiente_ubuntu.sh /home/plone/ambiente_ubuntu.sh
RUN chmod +x /home/plone/ambiente_ubuntu.sh
RUN chown plone:plone /home/plone/ambiente_ubuntu.sh

USER plone
#SHELL [ "/bin/bash", "-c" ]
#ENV SHELL=/bin/bash

RUN curl https://pyenv.run | bash
RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

#RUN ["/bin/bash", "-l", "-c", "~/ambiente_ubuntu.sh"]

SHELL [ "/bin/bash", "-c" ]
RUN source ~/.bashrc && ~/ambiente_ubuntu.sh
RUN rm -rf ~/ambiente_ubuntu.sh
