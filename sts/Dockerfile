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
RUN curl https://download.springsource.com/release/STS4/4.19.0.RELEASE/dist/e4.28/spring-tool-suite-4-4.19.0.RELEASE-e4.28.0-linux.gtk.x86_64.tar.gz -o sts.tar.gz
RUN tar -xvzf sts.tar.gz
RUN rm sts.tar.gz
CMD /opt/sts-4.19.0.RELEASE/SpringToolSuite4
