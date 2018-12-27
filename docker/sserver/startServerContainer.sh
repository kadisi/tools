#!/bin/sh

systemctl enable docker

NAME=sserver

docker rm -f $NAME

SS_PASSWORD="test123456"
SS_SERVER_PORT=8838
SS_LOCAL_PORT=1080
SS_METHOD="aes-256-cfb"

#docker run --name $NAME --privileged -e SS_PASSWORD=$SS_PASSWORD -p 8838:8838 -p 1080:1080 --restart=always -d jiulongzaitian/ssserver:latest
#docker run --name $NAME --privileged -e SS_PASSWORD=$SS_PASSWORD -p 8838:8838 -p 1080:1080 --restart=always -d ss
docker run --name $NAME --privileged -e SS_PASSWORD=$SS_PASSWORD -e SS_SERVER_PORT=$SS_SERVER_PORT  \
-e SS_LOCAL_PORT=$SS_LOCAL_PORT -e SS_METHOD=$SS_METHOD -p $SS_SERVER_PORT:$SS_SERVER_PORT -p $SS_LOCAL_PORT:$SS_LOCAL_PORT -d jiulongzaitian/ssserver:latest
~
