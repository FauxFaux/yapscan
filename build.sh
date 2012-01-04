#!/bin/sh
sudo yum -y install git gcc-c++ libpcap-devel openssl-devel make
(cd src && make -j && mv yapscan ..)

