FROM kalilinux/kali-rolling

SHELL ["/bin/bash", "-ic"]

RUN apt update
RUN apt install -y \
    vim \
    wget \
    curl \
    git \
    sudo \
    zip unzip \
    build-essential \
    docker.io \
    docker-compose \
    zlib1g-dev \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libssl-dev \
    libreadline-dev \
    libffi-dev \        
    libbz2-dev \
    libsqlite3-dev \
    liblzma-dev \
	python-tk \    
	python3-tk tk-dev

# add the user
RUN useradd --create-home kali -s /bin/bash
RUN echo "kali:kali" | chpasswd
RUN usermod -aG sudo kali
RUN usermod -aG docker kali

USER kali

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

RUN curl -s "https://get.sdkman.io" | bash

RUN curl https://pyenv.run | bash

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc