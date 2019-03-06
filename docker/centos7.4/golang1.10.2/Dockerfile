
# ==================
#FROM centos:7.4.1708
#
#RUN yum install wget vim -y
#
#RUN cd /tmp && wget https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz && tar zxvf go1.10.2.linux-amd64.tar.gz -C /usr/local/ && rm -rf go1.10.2.linux-amd64.tar.gz
#
#ENV GOROOT /usr/local/go
#ENV INTER_GOPATH /usr/src/goproject
#ENV GOPATH $INTER_GOPATH
#
#RUN mkdir -p $INTER_GOPATH/bin
#RUN mkdir -p $INTER_GOPATH/src
#
#ENV PATH $PATH:$GOROOT/bin/:$INTER_GOPATH/bin
#ENV PS1 '[\u@\H \W]\$ '
#ENV TERM linux
#
#RUN yum install git make -y
#
## BIN for install gometalinter :curl -L https://git.io/vp6lP
#ENV BINDIR $INTER_GOPATH/bin
#
#RUN go get github.com/golang/protobuf/protoc-gen-go && cd /tmp && curl -L https://git.io/vp6lP | sh && cd -
#
#RUN yum install gcc -y


# ==================
FROM jiulongzaitian/centos-7.4.1708-go-1.10.2:base

RUN echo "set encoding=utf-8" >> /root/.vimrc &&  echo "set termencoding=utf-8" >> /root/.vimrc

RUN go get -u github.com/LK4D4/vndr

RUN yum install epel-release -y

# 生成ascii 艺术字
RUN yum install figlet -y

RUN go get -u github.com/stevvooe/protobuild

RUN yum install -y unzip zip

RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.6.1-linux-x86_64.zip && unzip protoc-3.6.1-linux-x86_64.zip -d /usr/local/ && rm -rf protoc-3.6.1-linux-x86_64.zip

RUN go get -u -v github.com/kardianos/govendor

RUN go get github.com/gogo/protobuf/proto
RUN go get github.com/gogo/protobuf/jsonpb
RUN go get github.com/gogo/protobuf/protoc-gen-gogo
RUN go get github.com/gogo/protobuf/gogoproto
RUN go get github.com/tools/godep
RUN go get github.com/onsi/ginkgo/ginkgo
RUN yum install hg-git -y 
