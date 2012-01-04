#!/bin/sh
sudo yum -y install git gcc-c++.x86_64 libpcap-devel.x86_64 openssl-devel.x86_64
(cd src && make -j && mv yapscan ..)

