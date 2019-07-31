
# ==================
FROM centos:7.4.1708

RUN yum install wget vim -y

RUN cd /tmp && wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz && tar zxvf go1.12.7.linux-amd64.tar.gz -C /usr/local/ && rm -rf go1.12.7.linux-amd64.tar.gz

ENV GOROOT /usr/local/go
ENV INTER_GOPATH /usr/src/goproject
ENV GOPATH $INTER_GOPATH

RUN mkdir -p $INTER_GOPATH/bin
RUN mkdir -p $INTER_GOPATH/src

ENV PATH $PATH:$GOROOT/bin/:$INTER_GOPATH/bin
ENV PS1 '[\u@\H \W]\$ '
ENV TERM linux

RUN yum install git make -y

ENV BINDIR $INTER_GOPATH/bin

RUN go get github.com/golang/protobuf/protoc-gen-go 

RUN yum install gcc -y
