FROM centos:6
MAINTAINER Cameron Ruatta

ADD build.sh /build.sh
RUN chmod +x /build.sh
RUN rpm -Uvh http://209.132.181.24/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum install -y git \
	cmake \
	gcc \
	golang \
	geoip-devel \
	mercurial \
	python-sphinx \
	geoip-devel \
	patch \
	rpmbuild \
	rpmdevtools \
	dpkg
WORKDIR /usr/src
RUN git clone https://github.com/mozilla-services/heka
WORKDIR /usr/src/heka
RUN git checkout v0.9.1
ADD plugin_loader.cmake cmake/plugin_loader.cmake
RUN mkdir /output
ENTRYPOINT ["/build.sh"]

