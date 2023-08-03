FROM ubuntu:18.04

RUN apt update
RUN apt install -y \
	openjdk-17-jdk \
	libswt-gtk-4-java \
	curl \
	wget \
	vim \
	zip \
	unzip

WORKDIR /opt
RUN curl https://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/2023-06/R/eclipse-jee-2023-06-R-linux-gtk-x86_64.tar.gz -o eclipse.tar.gz
RUN tar -xvzf eclipse.tar.gz
RUN rm eclipse.tar.gz
CMD /opt/eclipse/eclipse
