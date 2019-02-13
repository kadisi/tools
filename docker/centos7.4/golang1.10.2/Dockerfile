
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
