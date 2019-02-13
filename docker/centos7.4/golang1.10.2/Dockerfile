# jiulongzaitian/centos-7.4.1708-go-1.10.2
#FROM centos:7.4.1708
#
#RUN yum install wget vim -y
#
#RUN cd /tmp && wget https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz && tar zxvf go1.10.2.linux-amd64.tar.gz -C /usr/local/ && rm -rf go1.10.2.linux-amd64.tar.gz
#
#
#ENV GOROOT /usr/local/go
#ENV INTER_GOPATH /usr/src/goproject
#ENV GOPATH $INTER_GOPATH
#
#RUN mkdir -p $INTER_GOPATH/bin
#RUN mkdir -p $INTER_GOPATH/src
#
#RUN echo "export PATH=$PATH:$GOROOT/bin/:$INTER_GOPATH/bin" >> /root/.bash_profile 
#RUN echo "PS1='[\u@\H \W]\$ '" >> /root/.bash_profile 
#RUN echo "export TERM=linux" >> /root/.bash_profile
#
#RUN source /root/.bash_profile
#
#RUN cd /tmp && curl -L https://git.io/vp6lP | sh && cd -
#
#

FROM jiulongzaitian/centos-7.4.1708-go-1.10.2

RUN yum install git -y

RUN source /root/.bash_profile && go get github.com/golang/protobuf/protoc-gen-go

