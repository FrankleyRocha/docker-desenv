FROM kalilinux/kali-rolling

SHELL ["/bin/zsh", "-ic"]

RUN apt update
RUN apt install -y curl

RUN curl \
    https://raw.githubusercontent.com/FrankleyRocha/scripts/main/ambiente_kali.sh \
    | /bin/zsh