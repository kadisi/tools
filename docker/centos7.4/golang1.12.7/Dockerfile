
FROM jiulongzaitian/centos-7.4.1708-go-1.12.7:base

RUN echo "set encoding=utf-8" >> /root/.vimrc &&  echo "set termencoding=utf-8" >> /root/.vimrc

RUN yum install epel-release -y

# 生成ascii 艺术字
RUN yum install figlet -y

RUN yum install -y unzip zip

RUN wget  https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip && unzip protoc-3.5.1-linux-x86_64.zip -d /usr/local/ && rm -rf protoc-3.5.1-linux-x86_64.zip

RUN go get -u -v github.com/kardianos/govendor

RUN go get github.com/gogo/protobuf/proto
RUN go get github.com/gogo/protobuf/jsonpb
RUN go get github.com/gogo/protobuf/protoc-gen-gogo
RUN go get github.com/gogo/protobuf/gogoproto
RUN go get github.com/golang/dep
RUN yum install hg-git -y 
RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint
RUN go get github.com/onsi/ginkgo
