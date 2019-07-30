#!/bin/bash

# #############################################
# Copyright (c) 2019-2039 All rights reserved.
# #############################################
#
# Name:  build.sh
# Date:  2019-02-13 11:29
# Author:   zhangjie
# Email:   iamzhangjie0619@163.com
# Desc:  
#
#

docker build -t jiulongzaitian/centos-7.4.1708-go-1.11.12:base --force-rm .

docker push jiulongzaitian/centos-7.4.1708-go-1.11.12:base

#docker build -t jiulongzaitian/centos-7.4.1708-go-1.10.2:latest  --force-rm .

#docker push jiulongzaitian/centos-7.4.1708-go-1.10.2:latest
