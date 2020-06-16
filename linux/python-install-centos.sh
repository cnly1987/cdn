#!/bin/bash
yum install -y openssl-static gcc wget 
yum groupinstall "Development tools" -y
yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel

wget http://python.org/ftp/python/3.6.8/Python-3.6.8.tar.xz
tar xf Python-3.6.8.tar.xz

cd Python-3.6.8
./configure --prefix=/usr/local/python3 --enable-optimizations 
make & make install
ln -s /usr/local/python3/bin/python3 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3

