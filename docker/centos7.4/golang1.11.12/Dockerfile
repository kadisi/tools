
# ==================
FROM centos:7.4.1708

RUN yum install wget vim -y

RUN cd /tmp && wget https://dl.google.com/go/go1.11.12.linux-amd64.tar.gz && tar zxvf go1.11.12.linux-amd64.tar.gz -C /usr/local/ && rm -rf go1.11.12.linux-amd64.tar.gz

ENV GOROOT /usr/local/go
ENV INTER_GOPATH /usr/src/goproject
ENV GOPATH $INTER_GOPATH

RUN mkdir -p $INTER_GOPATH/bin
RUN mkdir -p $INTER_GOPATH/src

ENV PATH $PATH:$GOROOT/bin/:$INTER_GOPATH/bin
ENV PS1 '[\u@\H \W]\$ '
ENV TERM linux

RUN yum install git make -y

# BIN for install gometalinter :curl -L https://git.io/vp6lP
ENV BINDIR $INTER_GOPATH/bin

RUN go get github.com/golang/protobuf/protoc-gen-go 

RUN yum install gcc -y


# ==================
#FROM jiulongzaitian/centos-7.4.1708-go-1.11.12:base

#RUN echo "set encoding=utf-8" >> /root/.vimrc &&  echo "set termencoding=utf-8" >> /root/.vimrc

#RUN yum install epel-release -y

# 生成ascii 艺术字
#RUN yum install figlet -y

#RUN yum install -y unzip zip

#RUN wget  https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip && unzip protoc-3.5.1-linux-x86_64.zip -d /usr/local/ && rm -rf protoc-3.5.1-linux-x86_64.zip

#RUN go get -u -v github.com/kardianos/govendor

#RUN go get github.com/gogo/protobuf/proto
#RUN go get github.com/gogo/protobuf/jsonpb
#RUN go get github.com/gogo/protobuf/protoc-gen-gogo
#RUN go get github.com/gogo/protobuf/gogoproto
#RUN go get github.com/tools/godep
#RUN go get github.com/onsi/ginkgo/ginkgo
#RUN yum install hg-git -y 
#RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint
