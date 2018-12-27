From docker.io/centos:7.3.1611
WORKDIR /shadowsocket/
RUN yum install -y python-setuptools
RUN easy_install pip
RUN pip install shadowsocks

ENV SS_SERVER_PORT=8838
ENV SS_LOCAL_PORT=1080
ENV SS_PASSWORD=asto!@#123456
ENV SS_METHOD=aes-256-cfb
ENV SS_WORKERS=1
ENV SS_FAST_OPEN=false

ADD startSS /usr/local/bin

CMD startSS
